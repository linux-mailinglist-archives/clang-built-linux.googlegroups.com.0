Return-Path: <clang-built-linux+bncBDEKVJM7XAHRB55D2LWAKGQECWZ4UEA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ed1-x53a.google.com (mail-ed1-x53a.google.com [IPv6:2a00:1450:4864:20::53a])
	by mail.lfdr.de (Postfix) with ESMTPS id C102DC87C0
	for <lists+clang-built-linux@lfdr.de>; Wed,  2 Oct 2019 14:03:03 +0200 (CEST)
Received: by mail-ed1-x53a.google.com with SMTP id o92sf10711053edb.9
        for <lists+clang-built-linux@lfdr.de>; Wed, 02 Oct 2019 05:03:03 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1570017783; cv=pass;
        d=google.com; s=arc-20160816;
        b=dEHN435BDa8q+s0LIrKPIieNQvVZTaHuC20+inzPzk/19MqlNgACGjsQyRI2zX2/WG
         58usgYzDh9X8MawxffwMBSEtqjf1seiIkPNys5+iVBQP4FWEYgp2SD0IXkk9RZ2wV+PY
         qPFJtJUaY9MOvlF306IxOmaZ1vYSicKNoEme3+St6VPmIRd/L7a06yiGXgkvkbxtqsRI
         wd7C5TU+kPIPASuc4nQATRXFJylQdjCvL1jkVmt3/SylnkaIDeHlRUt63UGjtY+Z8io4
         Sy4Q5jwRWGVHPz9/rcUF77PAcA5DduLvJgBRtkGL+t6KyItMdHEe9xFXGZcxT9zp1kGu
         70HQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=fx3pUi2xUOhVR2VrArT8vbapSjtnabgHuR88rWGgfgk=;
        b=mh0lkZsUogJwVIEIEsJwD7oGfw3y5uPe7Hg8NXkfA5dPRrDRs3yx3g2sxlQEPs89sD
         P4vRZCgfRNX1E9D9NN37TFHZEL209ihKUKB9dbLjuGXPczDNjs16Ey/7XquiGhh/wL0i
         GV9x6ug9kIgMsH7XkYhC0PVIAIWLjYhIsZ2geIC+PJIeH0cHeL30uDvBoM2oacjTyfjx
         exk3K6UEloQ0ZJmrOxwd00b3+n/4GllT7tzeT5mjqUjjoYq+Jymlxejs/BYXv5D00nWz
         uaxqdc6vL81rqGycCN6fSZvmhdXbOqmtqoWFxV53dFsgesuIOoZ6iEkFh7JHcm8MfVvr
         0/cg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=neutral (google.com: 212.227.126.135 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=fx3pUi2xUOhVR2VrArT8vbapSjtnabgHuR88rWGgfgk=;
        b=lPs8H7okchxPDJ9ckzFeqFh0rby0/xRGaGGIkPVA55KmdcWsIt7uCSMhPPPZIlHC9/
         qfBOtu7+P0rPIXmW7lb9WnlvtjzbY0iRcZhDrWFs7Ukm+vd8aSH6rPUlhevKeYShl0DR
         1gYs8Z++ENyGynNc16EOoH9oxmQVavXvvmLmlZtZwFgxyEtSMAxLRf8AYhCv+Q5uEVdf
         CP8NurI8O+5HcEmopfA1Nui+chq8s793vfcsRXND7Uaruz1L0UqlaXmKr0cJEZ58e02Y
         nTP510dFmM2QWJYqJaQEzAbeAtMbJt/EbZiwZvgCoxQtgCXcYNnJHHpc0cdcEi6VYumM
         W64w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=fx3pUi2xUOhVR2VrArT8vbapSjtnabgHuR88rWGgfgk=;
        b=d6vGdGXIJno8EjikuV18Fx85xKyREE4IDd+uOURu+EFQ6WBd4JF85+5KxffSE3OWmz
         8Mtgj/YgWX/FkuLs6ZR4zO4wbhyo0CzZQVd9KG134vATwpe0E9dsRDgsHNj/hbtVWWnk
         ka2dAPD6a3hg5lVyQ7uzh+OlWmsB5Z2TjfRVKOIFd5V5b1fD3MGe5xXnXwRv4sFaKuph
         JhE5udEbqD4bH9WpNe3oUhgktAbj1+TdO15xtR8pNs25RoZZCPRDZEixg5msGuUu418h
         sCi16U4F3lTXgdp+ofm4w7DAkBMi3bFF3rem/oYwKsUfsxJj9zMVxF9O88VKqUEPjp01
         WRuQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXxuaLluG91dZe+WjtvFoWFGPFK0cpNKPpMz34Qwp+irm6qB40p
	omaKY50aeWFQ/htw2s3T11w=
X-Google-Smtp-Source: APXvYqwPV0kYmEXTHlkrRDbNbXlDMj6HDe+BjM9qtzXmUSieBMl/VlNiNdyGUs+kG8CCxpE2RON7bA==
X-Received: by 2002:a17:906:4b15:: with SMTP id y21mr2627560eju.112.1570017783453;
        Wed, 02 Oct 2019 05:03:03 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aa7:c44d:: with SMTP id n13ls498873edr.7.gmail; Wed, 02 Oct
 2019 05:03:03 -0700 (PDT)
X-Received: by 2002:aa7:d698:: with SMTP id d24mr3411649edr.32.1570017783065;
        Wed, 02 Oct 2019 05:03:03 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1570017783; cv=none;
        d=google.com; s=arc-20160816;
        b=Fq4mCAF4xvmAZ60K5PqftpCoBXdBHldcLNocKL47FzUv9FzQJqFdKjxjjXzMa12WTf
         4LGLPwixBSC+8Zk6aLj2sZmeWG1yTahYR1RdIJKHPKeC2YoPrjptpz12p6gGIaIxqoEz
         COfTxMqU+9ROGZcaP50Hod4cC0j/yqYzhDEd8DI+LtuyIY6/rrMpTqG08ATXCGGeXjzT
         GW2XHhFTaCSepy5oPoGfhob+P3B3KgWDEFHjnt9PR4jGDZ06rAO0qxYLo+pK3QJhMDij
         WDAYZfpKWaI/cql8tUtKkBpKPaAtveRYVdKAA60rOtlrlWlZqfahUvRr+WZ8tUajgca0
         Xdtw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from;
        bh=A1GIxq0qoJSEcHFojSjgkpE4EB2uoDHsw/emrP3tOI0=;
        b=wKVMyfx2Mw8tElaAFIFua2CsKYRfbnX5t/KMZ8qa5Ct4Y36e1vE2DWCv12gQJ5Buyh
         ZuGuDc84g4sQ3MRwjA4BWzuwiWuTGwsNmf4033CEvF/pPX5IlFS7cj32KDASSHONCDZ8
         aTmtlbokR17fdq704DutyZMdL96tpoq7+CrM7kbPxADNHb21Sv+Hymv6apMlLOTv9EPC
         ZqEdjxPjzUB4LL0VCEihYLmbo6ybQpT24KX/L4/yrxmlJrNesExUuqXq4Ihj0uxiNC9U
         SJJ6J7Q/yYu8G+nHHwJEkrO2L+fUlPo+HFhjrB9sEC2oJ3NReuHV0784ldElE02WzCTs
         ah/A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 212.227.126.135 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
Received: from mout.kundenserver.de (mout.kundenserver.de. [212.227.126.135])
        by gmr-mx.google.com with ESMTPS id y11si1184754edq.1.2019.10.02.05.03.02
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 02 Oct 2019 05:03:03 -0700 (PDT)
Received-SPF: neutral (google.com: 212.227.126.135 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) client-ip=212.227.126.135;
Received: from threadripper.lan ([149.172.19.189]) by mrelayeu.kundenserver.de
 (mreue009 [212.227.15.129]) with ESMTPA (Nemesis) id
 1N17gw-1i9YkR0zSk-012aQY; Wed, 02 Oct 2019 14:03:01 +0200
From: Arnd Bergmann <arnd@arndb.de>
To: Alex Deucher <alexander.deucher@amd.com>,
	Harry Wentland <harry.wentland@amd.com>,
	Leo Li <sunpeng.li@amd.com>,
	=?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>,
	"David (ChunMing) Zhou" <David1.Zhou@amd.com>,
	David Airlie <airlied@linux.ie>,
	Daniel Vetter <daniel@ffwll.ch>
Cc: clang-built-linux@googlegroups.com,
	amd-gfx@lists.freedesktop.org,
	linux-kernel@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	Arnd Bergmann <arnd@arndb.de>,
	Bhawanpreet Lakha <Bhawanpreet.Lakha@amd.com>
Subject: [PATCH 4/6] drm/amd/display: fix dcn21 Makefile for clang
Date: Wed,  2 Oct 2019 14:01:25 +0200
Message-Id: <20191002120136.1777161-5-arnd@arndb.de>
X-Mailer: git-send-email 2.20.0
In-Reply-To: <20191002120136.1777161-1-arnd@arndb.de>
References: <20191002120136.1777161-1-arnd@arndb.de>
MIME-Version: 1.0
X-Provags-ID: V03:K1:iyh+vgBexJi73bPkiI60pHY80NTDCFDTYEIUMn80jY7xmFLFyN1
 lOYL3f+3oMpNTxy5GNVwJ3KsEs68xZViW7fENNgg3Jn5U+V1egRUjVEO1ktCKff0Pvq9jvM
 4GUnHYGOIUtOw3K3Thgb50nUN7iI5JiiL8myJPlaQsN9Bhcd/4wqCRRjdXAaL1TbjWAsBvu
 6OdkBy9ayup/rm6WjvHtA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:osAlctbyQR8=:PMoF551m2feK1yVfj5p1si
 0NsF0Vw7jCbM3UjyL2s9+FckHGlfjS2CR5RQ8ZjWJhwRIW19TTs3Fw3o/8QRBcxnadhwrtTJs
 u/bBXHhGLUf9GfY2GQ5YbtfE6Y7lDCTClYdkNAJ8Om7NUJ15ngHT+BeANDCC82sO5P1P7Kqrh
 7Apo4JVc9XpchQly/4+AJ0Aoslcr3xTdDH5crjBlFoaDwiir6YfXa8q/A2NB+y9jW5M7x50XF
 srjEuZqSdlsFcY53m4r47Ckm04Oc6X6P0hzM6HlKXipty1ePvojObDCjOD4A6rOwtGpDymgeZ
 pBJZtnC0J9T4DuvTuqqKWrZu3V2YoQQAnt7Wau0Ilkrn1k599PEbivZl3lDzXMh3rvlY96RiC
 AOKVbfVyiCZp7JCioSHddRzgaQEB9GB7kbhKpSoJm7aHxNQtm3IYJ0uZQney+UIZaeQF2euu9
 YXFAjzM4HyyOrmVMv1aD981VTUfnCH7kdTE68ncoLBAb0fhu3TQrBSZZEuDifhvCNwA1J0twW
 2P/Qby4iOItQ+N35i0xNBN0GglcxPdx7QfPYUbI2ihJK7uCKf3vhi2svF336F5xsnoQF6B2zL
 1g43JHYgF2hPy4ufjpnwOIW1vm7jMUnQnwY6RuCw/yEPlIqH+quLN6685+4nZoZIEOgk7Jc65
 UxSLEC7Z69DRdRNoyAErimL5mBLoTsyLuSIbdAMu9Aigcmnu8+xozb1hJsZWGs+rsqXPILL7e
 w3wNvnPx6deHku0JWxLzCTmFfzWVVjPFMoSWC+xdE1vSuqn0s5+nbd6GGDRxaVRT7IBOycOCh
 BYn334EnghabAFgHkq9Hz/KzKXLfVdhlTgwqF36uo2mh1mUfOsaoYot2aaMLxAFooFvsTN5TR
 ov53b8Y7fCwiurBPSYww==
X-Original-Sender: arnd@arndb.de
X-Original-Authentication-Results: gmr-mx.google.com;       spf=neutral
 (google.com: 212.227.126.135 is neither permitted nor denied by best guess
 record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
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

Just like all the other variants, this one passes invalid
compile-time options with clang after the new code got
merged:

clang: error: unknown argument: '-mpreferred-stack-boundary=4'
scripts/Makefile.build:265: recipe for target 'drivers/gpu/drm/amd/amdgpu/../display/dc/dcn21/dcn21_resource.o' failed

Use the same variant that we have for dcn20 to fix compilation.

Fixes: eced51f9babb ("drm/amd/display: Add hubp block for Renoir (v2)")
Signed-off-by: Arnd Bergmann <arnd@arndb.de>
---
 drivers/gpu/drm/amd/display/dc/dcn21/Makefile | 12 +++++++++++-
 1 file changed, 11 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/amd/display/dc/dcn21/Makefile b/drivers/gpu/drm/amd/display/dc/dcn21/Makefile
index 8cd9de8b1a7a..ef673bffc241 100644
--- a/drivers/gpu/drm/amd/display/dc/dcn21/Makefile
+++ b/drivers/gpu/drm/amd/display/dc/dcn21/Makefile
@@ -3,7 +3,17 @@
 
 DCN21 = dcn21_hubp.o dcn21_hubbub.o dcn21_resource.o
 
-CFLAGS_$(AMDDALPATH)/dc/dcn21/dcn21_resource.o := -mhard-float -msse -mpreferred-stack-boundary=4
+ifneq ($(call cc-option, -mpreferred-stack-boundary=4),)
+	cc_stack_align := -mpreferred-stack-boundary=4
+else ifneq ($(call cc-option, -mstack-alignment=16),)
+	cc_stack_align := -mstack-alignment=16
+endif
+
+CFLAGS_$(AMDDALPATH)/dc/dcn21/dcn21_resource.o := -mhard-float -msse $(cc_stack_align)
+
+ifdef CONFIG_CC_IS_CLANG
+CFLAGS_$(AMDDALPATH)/dc/dcn21/dcn21_resource.o += -msse2
+endif
 
 AMD_DAL_DCN21 = $(addprefix $(AMDDALPATH)/dc/dcn21/,$(DCN21))
 
-- 
2.20.0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191002120136.1777161-5-arnd%40arndb.de.
