#include <windows.h>
#include <ATLBASE.H>
#include <EXDISP.h>
#include "main.h"
#include "resource.h"

LRESULT CALLBACK AboutBoxProc    ( HWND, UINT, WPARAM, LPARAM );

void AboutBox (void) {
	DialogBox(hInst, MAKEINTRESOURCE(IDD_About), hMainWindow, (DLGPROC)AboutBoxProc);
}

LRESULT CALLBACK AboutBoxProc (HWND hDlg, UINT uMsg, WPARAM wParam, LPARAM lParam) {
	static CComPtr<IWebBrowser2> pWebBrowser;

	switch (uMsg) {
	case WM_INITDIALOG:
		{
			CoInitialize(NULL);

			if(FAILED(pWebBrowser.CoCreateInstance(CLSID_InternetExplorer,NULL, CLSCTX_SERVER)))
			{	
				break;
			}		
			HWND m_hwndWebBrowser;
			pWebBrowser->get_HWND((long*)&m_hwndWebBrowser );

			pWebBrowser->put_MenuBar(FALSE);
			pWebBrowser->put_StatusBar(FALSE);
			pWebBrowser->put_ToolBar(FALSE);

			DWORD dwStyle = ::GetWindowLong(m_hwndWebBrowser, GWL_STYLE);
			DWORD dwNewStyle = (dwStyle & ~(WS_BORDER|WS_THICKFRAME|WS_SYSMENU|WS_CAPTION|WS_MINIMIZEBOX|WS_MAXIMIZEBOX) | WS_CHILD);
			::SetWindowLong(m_hwndWebBrowser, GWL_STYLE, dwNewStyle);

			DWORD dwStyle2 = ::GetWindowLong(m_hwndWebBrowser, GWL_EXSTYLE);
			DWORD dwNewStyle2 = (dwStyle2 & ~WS_EX_NOPARENTNOTIFY);
			::SetWindowLong(m_hwndWebBrowser, GWL_EXSTYLE, dwNewStyle2);

			RECT rc;
			GetWindowRect(GetDlgItem(hDlg,IDC_IE_CONTROL),&rc);
			MapWindowPoints(NULL,hDlg,(LPPOINT)&rc,2);
			SetWindowPos(m_hwndWebBrowser,HWND_TOP,rc.left,rc.top,rc.right-rc.left,rc.bottom-rc.top,SWP_SHOWWINDOW);

			SetParent( m_hwndWebBrowser, hDlg );
			pWebBrowser->put_Visible(TRUE);

			CComBSTR bstrURL(_T("about:blank"));

			CComVariant varEmpty(VT_EMPTY);
			pWebBrowser->Navigate(bstrURL, &varEmpty, &varEmpty, &varEmpty, &varEmpty);

			CComPtr<IDispatch>			pDispDocument;
			pWebBrowser->get_Document(&pDispDocument);
  
			//Load HTML page from resoure
			if(pDispDocument.p != NULL) 
			{ 
				HRSRC   hRes   = FindResource(hInst, MAKEINTRESOURCE(IDR_HTML_ABOUT), RT_HTML); 
				LPCSTR strHTML = (LPCSTR)LoadResource(hInst, hRes); 
				if (strHTML == NULL) { break; }
	
				int strHTMLlen = strlen(strHTML);
				HGLOBAL hHTMLText = GlobalAlloc(GPTR, strHTMLlen + 1);
				CopyMemory(reinterpret_cast<VOID *>(hHTMLText), reinterpret_cast<CONST VOID *>(strHTML), strHTMLlen); 

				CComPtr<IStream> pStream = NULL; 
				if(CreateStreamOnHGlobal(hHTMLText, TRUE, &pStream) == ERROR_SUCCESS) 
				{ 
					CComQIPtr<IPersistStreamInit, &__uuidof(IPersistStreamInit)> pqiPersistStreamInit = pDispDocument; 
					if(pqiPersistStreamInit.p != NULL)
					{
						if(pqiPersistStreamInit->InitNew() == ERROR_SUCCESS)
						{
							pqiPersistStreamInit->Load(pStream);
						}
						pqiPersistStreamInit.Release();
					}
					pStream.Release();
				}
			}
			
			READYSTATE ready;
			while (pWebBrowser->get_ReadyState(&ready) == S_OK)
			{
				if (ready == READYSTATE_COMPLETE)
				{
					break;
				}
				Sleep(100);
			}

			BringWindowToTop(m_hwndWebBrowser);
		}
		break;
	case WM_COMMAND:
		switch (LOWORD(wParam)) {
		case IDOK:
		case IDCANCEL:
			pWebBrowser.Release();
			CoUninitialize();
			EndDialog(hDlg,0);
			break;
		}
	default:
		return FALSE;
	}
	return TRUE;
}
