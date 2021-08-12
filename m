Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBU4O22EAMGQEYMT6AHI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x137.google.com (mail-il1-x137.google.com [IPv6:2607:f8b0:4864:20::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 334503EABED
	for <lists+clang-built-linux@lfdr.de>; Thu, 12 Aug 2021 22:40:52 +0200 (CEST)
Received: by mail-il1-x137.google.com with SMTP id a2-20020a9266020000b0290222005f354csf3847770ilc.4
        for <lists+clang-built-linux@lfdr.de>; Thu, 12 Aug 2021 13:40:52 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1628800851; cv=pass;
        d=google.com; s=arc-20160816;
        b=cMHctu1a0wCMagdw9OTr0EjgcXbowPI+QoH+TWW7ve27B4gX/enCg5k/wfrg95wSuv
         iqfySPQMDdljoOO/Y4uIu7M9De5dtcRTDRW1EldekG8W0dDgH7nOb1A9YA9rDqW9Ik4T
         yqyckmhfhrD22Jt0HkBiBTU2iPDIpiMTKOyBtNtZOdHIdTx/UdoYM9icAmVpp/0vR4Z5
         EUXCIK6sHSM7j6MVREHNAw+LdTb6uL7AzJtXCOkkH8DUAMYiAbJsbakz+dFTV4bApqMz
         lovaJ9n3Np0JD1709C1fdn2P/UDZw0K0QgQ80SSWzEigkXVOMn6godBW5Qc7jYBmpc6A
         9VwQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=gTnmPYrbLjZGEHrcEUR0CanJnukTNiTuXRdRbfLPktM=;
        b=EUQ4q9vbFxeaVEfS/jRU4jay65KrSZZMWiQzophwrC3fQHR08stlTs7FlUXbz0BYrK
         wRizpxWRHSkF1W45NkblaRIY3ya6GrSpndF9LbEzo1SHsdiOc45Lx7/DakMfP993NWNI
         DEvGJRL6vDtXjyXZFGB1gEie8TOPX5xdqEYACyGRzVtV08oyaOKIqxK5L5lDQUgHiKuO
         aX7P89BE087J7cRQ4UU99pzAHCUIdv4zsyWx6mlcJFblTcBVBqggSR0NFnAt50iem7w6
         j28MFC/iyU0OKo4OfBW/A2+/7obvBqzzHuIv2stKYVCMxH5+LDZ4AE+u0cFaGs95Gmcq
         r+lQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=uUJfM4YR;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=gTnmPYrbLjZGEHrcEUR0CanJnukTNiTuXRdRbfLPktM=;
        b=DzhpV5Eu9sBZ+A6UYo2i+Mop89cOJDIDNYwfFhJzJewOi6QU1Kb+hqsa+IJegt6zEe
         nNuIiSACkunyEuhddb3FhQmWRrWnBy2PpEyZ1ds9Upzw6HYdwvfhCGCQBBa0vd7+UFwY
         BGVCuVBZHfJ/bPWnktlwbU2+W1y3MIfQ+jnl/rcCCX9lRTwSdK6+H1H6UHyW6jNgPeps
         0uFcAN5aTQFkBkLXla8GF3DJhDK5ooOKZBY4W9/Pv9tJ51tHwmuuFLSimX27736kzBTe
         vafPq07hfUiKcFw0EpNbNFyeycv6XXyUsnAzVNG+iT5Q6wechhnYfEPwUpUVYKEG7fAM
         Feig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=gTnmPYrbLjZGEHrcEUR0CanJnukTNiTuXRdRbfLPktM=;
        b=CLp2KJ9e54OUQzrnBtI0Agfl8sqVymjYLnkeinJTRX4AV0P7vYIVRR68nxBWCDzrhC
         WKLNyeO52JWliGJ2lIIiRqfEtCh9Cc9Bhl/n5ZZ1/VuyDEPAgBaTQthuouMXBuCL0SlF
         7bo+mZAkLZjYmrXxZiGzTjU/19y0CNL24idKimYAq3Xoa/0/Z/EKthamy3OYo1Lld5j6
         o0COphS59toeK2rwhaRnY2gkr3+KsbhvN4GAl6ED9SR3lP9jbodxTBd5rD/TVTSE2me0
         1f0dY8ZdwwQuUjwyVK3KHFGaiqkYKlZgF8Eun6nvos9y4wWQ2Mo5jArj2H8qJZMwC0yd
         13+Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533oSQYzYxwDsQ40Qh8GaSj4XylU1FruMao7Mwj2vkeENdc+Avnv
	Deb6C6vpcgYAU0hbDjdlSeU=
X-Google-Smtp-Source: ABdhPJzZwz737iwmbfK9q57FMS8LKA1A36lIen0FBEcfs5/Z6k9b1GVypv4rdnBwyGIRpr0Obndfqg==
X-Received: by 2002:a02:350a:: with SMTP id k10mr5402812jaa.55.1628800851196;
        Thu, 12 Aug 2021 13:40:51 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a02:910b:: with SMTP id a11ls816384jag.7.gmail; Thu, 12 Aug
 2021 13:40:50 -0700 (PDT)
X-Received: by 2002:a02:340a:: with SMTP id x10mr5388208jae.13.1628800850811;
        Thu, 12 Aug 2021 13:40:50 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1628800850; cv=none;
        d=google.com; s=arc-20160816;
        b=as3gc+RJFct6LqgvA9cThafoPSXhO4I2uIrtg8nMczJ+l5Ha7Iah88HqqHuUKcB4p8
         zU10KmwmD22QDgvdonOUfsB6APqie8qkVXKKhCLZpiSU0+npe3MUO+T9rEF2u5JrVBYa
         r1nXMcuQ2foohhF5E+pmTYe61OlzhxGnjcHHbLTyoB5RlZoyjfEPmItMZd/cev+mdtcP
         sJpxGjLZIteyy+sONchfh4IqwcgnvCBYzVMEILwEgpvm/8v8rLFoIF+NbFo4UjtFZVZI
         9gXA9uodsoksrjzVtZdOIJVRNj2+kLdbLzy29kbBXurz5SXjECn4efx00NN2+ejCfDGT
         KhjQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=8V63ftERfHunnYY1+H6p/YGx56TRv6ZJFOSsnXcOYkc=;
        b=zFC6i1AiSb5g9sa4x9Wsl4TeBRLENMn4CtPsGCy3MgOzjpWSJBJzvIh8S1ZyoTGLn3
         19vIyBDdhquP3nkz/uO4XZU+eYvg1l3tOuJdAip7oS1va1ZKsxMMk5PKwzBQrl4JLr0h
         yz5tP2/UrqOF37vjGGGRxICAmoW3a5jtpjRhbYXQ+rRqrJ8ziHixifx1wvAg9tQshWuj
         ayzoOP2McvbVAcKnsV+vS9jaxqnWUvufkgiHeXC8dKeQhSfx3I+ZfQNxxcOAX175Q5Nr
         IOIJAaq0xggWkeswvfGB4FpX5fESGOHHidPtJdFaJjamElFZPLkgFwfCzUwi9QcOl8T4
         q4sQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=uUJfM4YR;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id y1si223234iol.2.2021.08.12.13.40.50
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 12 Aug 2021 13:40:50 -0700 (PDT)
Received-SPF: pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 7A2AB610A3;
	Thu, 12 Aug 2021 20:40:48 +0000 (UTC)
From: Nathan Chancellor <nathan@kernel.org>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Phillip Potter <phil@philpotter.co.uk>,
	Larry Finger <Larry.Finger@lwfinger.net>
Cc: Nick Desaulniers <ndesaulniers@google.com>,
	linux-staging@lists.linux.dev,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Nathan Chancellor <nathan@kernel.org>
Subject: [PATCH 3/3] staging: r8188eu: Reorganize error handling in rtw_drv_init()
Date: Thu, 12 Aug 2021 13:40:27 -0700
Message-Id: <20210812204027.338872-4-nathan@kernel.org>
X-Mailer: git-send-email 2.33.0.rc2
In-Reply-To: <20210812204027.338872-1-nathan@kernel.org>
References: <20210812204027.338872-1-nathan@kernel.org>
MIME-Version: 1.0
X-Original-Sender: nathan@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=uUJfM4YR;       spf=pass
 (google.com: domain of nathan@kernel.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=nathan@kernel.org;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=kernel.org
Content-Type: text/plain; charset="UTF-8"
Precedence: list
Mailing-list: list clang-built-linux@googlegroups.com; contact clang-built-linux+owners@googlegroups.com
List-ID: <clang-built-linux.googlegroups.com>
X-Spam-Checked-In-Group: clang-built-linux@googlegroups.com
X-Google-Group-Id: 357212215037
List-Post: <https://groups.google.com/group/clang-built-linux/post>, <mailto:clang-built-linux@googlegroups.com>
List-Help: <https://groups.google.com/support/>, <mailto:clang-built-linux+help@googlegroups.com>
List-Archive: <https://groups.google.com/group/clang-built-linux
List-Subscribe: <https://groups.google.com/group/clang-built-linux/subscribe>, <mailto:clang-built-linux+subscribe@googlegroups.com>
List-Unsubscribe: <mailto:googlegroups-manage+357212215037+unsubscribe@googlegroups.com>,
 <https://groups.google.com/group/clang-built-linux/subscribe>

After commit 987219ad34a6 ("staging: r8188eu: remove lines from Makefile
that silence build warnings"), clang warns:

drivers/staging/r8188eu/os_dep/usb_intf.c:726:6: warning: variable
'status' is used uninitialized whenever 'if' condition is true
[-Wsometimes-uninitialized]
        if (!if1) {
            ^~~~
drivers/staging/r8188eu/os_dep/usb_intf.c:741:6: note: uninitialized use
occurs here
        if (status != _SUCCESS)
            ^~~~~~
drivers/staging/r8188eu/os_dep/usb_intf.c:726:2: note: remove the 'if'
if its condition is always false
        if (!if1) {
        ^~~~~~~~~~~
drivers/staging/r8188eu/os_dep/usb_intf.c:714:12: note: initialize the
variable 'status' to silence this warning
        int status;
                  ^
                   = 0
1 warning generated.

status is not initialized if the call to usb_dvobj_init() or
rtw_usb_if1_init() fails.

Looking at the error function as a whole, the error handling is odd
compared to the rest of the kernel, which prefers to set error codes on
goto paths, rather than a global "status" variable which determines the
error code at the end of the function and function calls in the case of
error.

Rearrange the error handling of this function to bring it more inline
with how the kernel does it in most cases, which helps readability.

The call to rtw_usb_if1_deinit() is eliminated because it is not
possible to ever hit it; if rtw_usb_if1_init() fails, the goto call
jumps over the call to rtw_usb_if1_deinit() and in the success case,
status is set to _SUCCESS.

Signed-off-by: Nathan Chancellor <nathan@kernel.org>
---
 drivers/staging/r8188eu/os_dep/usb_intf.c | 20 ++++++++++----------
 1 file changed, 10 insertions(+), 10 deletions(-)

diff --git a/drivers/staging/r8188eu/os_dep/usb_intf.c b/drivers/staging/r8188eu/os_dep/usb_intf.c
index a462cb6f3005..667f41125a87 100644
--- a/drivers/staging/r8188eu/os_dep/usb_intf.c
+++ b/drivers/staging/r8188eu/os_dep/usb_intf.c
@@ -704,20 +704,23 @@ static void rtw_usb_if1_deinit(struct adapter *if1)
 static int rtw_drv_init(struct usb_interface *pusb_intf, const struct usb_device_id *pdid)
 {
 	struct adapter *if1 = NULL;
-	int status;
 	struct dvobj_priv *dvobj;
+	int ret;
 
 	/* step 0. */
 	process_spec_devid(pdid);
 
 	/* Initialize dvobj_priv */
 	dvobj = usb_dvobj_init(pusb_intf);
-	if (!dvobj)
-		goto exit;
+	if (!dvobj) {
+		ret = -ENODEV;
+		goto err;
+	}
 
 	if1 = rtw_usb_if1_init(dvobj, pusb_intf);
 	if (!if1) {
 		DBG_88E("rtw_init_primarystruct adapter Failed!\n");
+		ret = -ENODEV;
 		goto free_dvobj;
 	}
 
@@ -726,15 +729,12 @@ static int rtw_drv_init(struct usb_interface *pusb_intf, const struct usb_device
 		rtw_signal_process(ui_pid[1], SIGUSR2);
 	}
 
-	status = _SUCCESS;
+	return 0;
 
-	if (status != _SUCCESS && if1)
-		rtw_usb_if1_deinit(if1);
 free_dvobj:
-	if (status != _SUCCESS)
-		usb_dvobj_deinit(pusb_intf);
-exit:
-	return status == _SUCCESS ? 0 : -ENODEV;
+	usb_dvobj_deinit(pusb_intf);
+err:
+	return ret;
 }
 
 /*
-- 
2.33.0.rc2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210812204027.338872-4-nathan%40kernel.org.
