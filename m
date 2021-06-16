Return-Path: <clang-built-linux+bncBCN7B3VUS4CRBA7CU2DAMGQE5SVFOFY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf3e.google.com (mail-qv1-xf3e.google.com [IPv6:2607:f8b0:4864:20::f3e])
	by mail.lfdr.de (Postfix) with ESMTPS id 0AFF63A94BA
	for <lists+clang-built-linux@lfdr.de>; Wed, 16 Jun 2021 10:06:29 +0200 (CEST)
Received: by mail-qv1-xf3e.google.com with SMTP id 10-20020a0562140d4ab0290247bb35d2c3sf1357106qvr.22
        for <lists+clang-built-linux@lfdr.de>; Wed, 16 Jun 2021 01:06:28 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1623830788; cv=pass;
        d=google.com; s=arc-20160816;
        b=zfgWSPVS6a0M8Wlhcqhcfq2HJOAvNDAqyRM2hNYoz0L9lIJ/NhFx0LFknaGgto5q9J
         mGelwaVBpbpZyrhoZrO1OEpikKgtd73heQZP2tsQrqBzhxaO56eiNLmjw6U1I7Sp2sAu
         uCbG0s8Ou57j8mclMfaq+H76j79mGkRPKR9bUD20cBMRTPOGrqw6l1pUzcGMl7KZAp0Q
         xKfb/fqrIxQzUqFXVR00eltOoTCmVKXSrkBbmWpDS+3oYqTE9EYd4ZwmIrs4Mz8S/nDK
         9qDJzzU4r26MrXwYQNEDv4lYQqhHRmAxnEEagpmPhxBT9tsi2LlWu47ZAogAMiLqFWBO
         pDyQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=N40qaz5H7olea73L+LLYvaD92uPHYvnS3AquFCOM07U=;
        b=FYBMfkna35r2pNX7CeGGluLjonwlDvHxDnh9Ne+4sY8k5QDZIb1izLUh61D1vFt9XC
         mDpMzhvpFwHLTUf8fHDatqT6aZdkol62SYVFrAjE5yMCzxnxfZkUfCS0cdTU7HL7e3HK
         Ju+lL3/lwJL9cV0OLoCowRTbMfFQPuWV70NYPT+do8q98JRA6sreHSXWo3Gz43YP5Ytq
         XgtJFRIhnocZx0dqfgbSYFLeU5YEjxUDe4xW5gsiKVqsy9x+nrhTuDr5D+GhO3vrHS8z
         oE02oYAZhmsubG7sqA0Nfky5NkIodKwoidCixrDKoso9SkMnElKL0uM1q00uIDsY5ftT
         cxDA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lecopzer.chen@mediatek.com designates 210.61.82.184 as permitted sender) smtp.mailfrom=lecopzer.chen@mediatek.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=mediatek.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=N40qaz5H7olea73L+LLYvaD92uPHYvnS3AquFCOM07U=;
        b=c/5XCFPOFs3v4WqR8ll/hOTueCu+bwqnsINrwpud6knJV8vDd+ReE+exHSVuSm6XvG
         CTTaXXiCmMSTjA65M5V+pVpOYOVma49XnwzmrRQuWzcwDa9OtCNph70ND1F3I/2fecwJ
         mhBrt1mltp/A437lbcsO3auJj+WnMUQ8K2ddoPZKdjgaRpgowrI3KNhUfxSvzl8n/l5K
         4OE+z1lXGGu4lP4woXBPbmlOk2tBtiCuEut85J/B1EFU/qoq1mJ5AihGwxL4oYYzuuoF
         eMb6oPRpSuQLjRqqlKUoZpdp5iXARrB7xupUs+rpFxkO3+knw1mXpR+KfJIF/YjJZHbv
         3IcQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=N40qaz5H7olea73L+LLYvaD92uPHYvnS3AquFCOM07U=;
        b=lqPvi2FYn3Y4ZFxYastFzFE6PRCWE7q1zLtgMats09HjVcCKEHEpXPVr1D/N1oxPyo
         HB/2KAW5vVYSGZ7hCeznBSiWrEf03VXgnRsFS2tHMLQufmX/qmVKVk4a8gp15Ks0m1ej
         kQD1tvOOuoMhz6F+w6+o+NMttjDR2U/wewdKNRY62JlrHoL87naFRPmiPqac6LVpiJNu
         hMU2nX5W27ocDCBWnVThanGFAL9CsHwbdxm1cbrZIBSpOv+lK31fyZSxqrfmqNR/N1mE
         Kp+CTI7vpc8hdQebf1SByZWdD91P7Eo4e2qcyIH5FCqw+2AT9ICQuXVr/28kPX5O7cjt
         kKAw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532i3UpyQYiPZlmXoPN3iNCZmrU/HwKYrPOi32qMqroYj8IkYxlL
	RYDo7ihcKsXB+9AHc6GHINI=
X-Google-Smtp-Source: ABdhPJxPbkeIMeY9qlPDCb01bxqQTSTySq+9eU8r+uNrQJFQwtwEsy0HHUTVsh4rrf84g80xNxrNnw==
X-Received: by 2002:a05:6214:1481:: with SMTP id bn1mr9575062qvb.1.1623830787830;
        Wed, 16 Jun 2021 01:06:27 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:7fcd:: with SMTP id b13ls930387qtk.9.gmail; Wed, 16 Jun
 2021 01:06:27 -0700 (PDT)
X-Received: by 2002:ac8:774e:: with SMTP id g14mr3988797qtu.326.1623830787363;
        Wed, 16 Jun 2021 01:06:27 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1623830787; cv=none;
        d=google.com; s=arc-20160816;
        b=TGH7ezSu0G7ncV/jnAiwRYaL0RQJ1Bg+Y/OZsltaoUCfxg7uY5gz77r5ucXKni4XcC
         h4m4fTZGLQ98nx7M9hOK2c3ij5f079N60ugmbb98JyvQQs47LgF3gOTx8Lgzx1fXaq42
         2EYsPiuzYGBblTquxX/LrwPJV009l0QEOf2oIW0dfLcQUxy1a4DFGmyy0CyQu0tdU05n
         y7d3rKrvP8R62jQrVjALl393Q1Twa91aeM4tZBMnMqeEkSDOWOFRD486T792HkM4EUKy
         woPeWSS1RjPs002E2Wr7zn/EZvAwN1aikzK0R7Tcu3vWzehFUaq4FtcVkaE669ajOQ3e
         nNAQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:in-reply-to:message-id:date:subject:cc:to
         :from;
        bh=GAuZexkeNCJp0g+iT87lKhy8kqylVPj1rosmApgWMao=;
        b=AvIE2BUtrxgLpFzqil5xryNYyHx+dGRW5M09aF5lOCMW0/xd9Xlqz5Ek329fJx88P7
         ddigX+EVptXrzFQRPWl+VOY+GVim/cT/NEKRTobhvxK4LrBGgc4N1YDj3cvBo4mjL+24
         uB0YqbmgtevsOdhTutE+NpCbees6V3tJw1tzlAEFPQVWPACwyYi6sHBQYSGPdJIR5+B9
         GdPymhPYiU+5m5w47DJdQqaOjJors8y/UHLn9KS+COo0wg0YdrNS5U0eVb8YDFFJN7rK
         niX3E9JnJNf53QfrBLe7IEFUP7LQ6WTVKz2iIKHS+7uCr/6jG6+zeMh5DZlLO2h9wB2o
         iUkg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lecopzer.chen@mediatek.com designates 210.61.82.184 as permitted sender) smtp.mailfrom=lecopzer.chen@mediatek.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=mediatek.com
Received: from mailgw02.mediatek.com ([210.61.82.184])
        by gmr-mx.google.com with ESMTPS id l21si145877qtj.2.2021.06.16.01.06.26
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 16 Jun 2021 01:06:27 -0700 (PDT)
Received-SPF: pass (google.com: domain of lecopzer.chen@mediatek.com designates 210.61.82.184 as permitted sender) client-ip=210.61.82.184;
X-UUID: 26ae6738386344e88258b709a2c20f1c-20210616
X-UUID: 26ae6738386344e88258b709a2c20f1c-20210616
Received: from mtkcas06.mediatek.inc [(172.21.101.30)] by mailgw02.mediatek.com
	(envelope-from <lecopzer.chen@mediatek.com>)
	(Generic MTA with TLSv1.2 ECDHE-RSA-AES256-SHA384 256/256)
	with ESMTP id 1960171326; Wed, 16 Jun 2021 16:02:54 +0800
Received: from MTKCAS06.mediatek.inc (172.21.101.30) by
 mtkmbs08n2.mediatek.inc (172.21.101.56) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Wed, 16 Jun 2021 16:02:52 +0800
Received: from mtksdccf07.mediatek.inc (172.21.84.99) by MTKCAS06.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1497.2 via Frontend
 Transport; Wed, 16 Jun 2021 16:02:52 +0800
From: Lecopzer Chen <lecopzer.chen@mediatek.com>
To: <keescook@chromium.org>
CC: <clang-built-linux@googlegroups.com>, <lecopzer.chen@mediatek.com>,
	<linux-kbuild@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
	<masahiroy@kernel.org>, <michal.lkml@markovi.net>, <nathan@kernel.org>,
	<ndesaulniers@google.com>, <samitolvanen@google.com>,
	<yj.chiang@mediatek.com>
Subject: Re: [PATCH] kbuild: lto: fix module versionings mismatch in incremental build
Date: Wed, 16 Jun 2021 16:02:52 +0800
Message-ID: <20210616080252.32046-1-lecopzer.chen@mediatek.com>
X-Mailer: git-send-email 2.18.0
In-Reply-To: <202106150821.B4D3E02@keescook>
References: <202106150821.B4D3E02@keescook>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-MTK: N
X-Original-Sender: lecopzer.chen@mediatek.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lecopzer.chen@mediatek.com designates 210.61.82.184 as
 permitted sender) smtp.mailfrom=lecopzer.chen@mediatek.com;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=mediatek.com
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

> On Tue, Jun 15, 2021 at 02:26:58PM +0800, Lecopzer Chen wrote:
> > > On Mon, Jun 14, 2021 at 01:51:09PM +0800, Lecopzer Chen wrote:
> > > > When building modules(CONFIG_...=m), I found some of module versions
> > > > are incorrect and set to 0.
> > > > This can be found in build log for first clean build which shows
> > > > 
> > > > WARNING: EXPORT symbol "XXXX" [drivers/XXX/XXX.ko] version generation failed, symbol will not be versioned.
> > > 
> > > I'm doing this, and I don't see the problem:
> > > 
> > > $ make LLVM=1 LLVM_IAS=1 distclean
> > > $ make LLVM=1 LLVM_IAS=1 menuconfig
> > > 	*enable LTO*
> > > 	*enable a module*
> > > $ make LLVM=1 LLVM_IAS=1 -j...
> > > 
> > > What series of commands (and .config) shows this for you?
> > 
> > Hi Kees,
> > 
> > Thanks for you checking.
> > 
> > After double checking in clean android kernel build, this causes by
> > make version.
> > (I have build failed in Linux LTO,
> > seems it's not well support in contract to android?)
> > 
> > I knew Google has LTO first in Android and upstream later, and most code
> > are same as upstream, so the env here I use Android common kernel for
> > easily testing.
> > 
> > 
> > Test env is android common kernel: android12-5.4 [1] with its latest code
> > and it builds from build.sh[2]
> > 
> > $ BUILD_CONFIG=common/build.config.gki.aarch64 build/build.sh
> > + make O=.... LLVM=1 LLVM_IAS=1 DEPMOD=depmod -j12 Image modules Image.lz4
> > 
> > With make set to v3.81, this can be reproduced with CONFIG_TEE=m.
> > With version >= 4.2 this is not reproducible.
> 
> Ah, very interesting. While there are tests in Makefile for
> MAKE_VERSION, if we want to do this, it should likely be extended to
> Kconfig, as that's where the initial version tests for things happen. We
> could require MAKE_VERSION >= 4.2 for LTO?
> 
> -Kees
 
Yes, We can imitate how CLANG_VERSION was implemented in Kconfig.

Accroding to GNU make release page[1], I've only tested for 3.81,
4.2 and 4.3.
4.2 was released in 2016, I think it's fine for LTO lowest version.


[1] https://ftp.gnu.org/gnu/make/


thanks,
Lecopzer



-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210616080252.32046-1-lecopzer.chen%40mediatek.com.
