Return-Path: <clang-built-linux+bncBD4NDKWHQYDRB6EW574AKGQEJNK7R3I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103d.google.com (mail-pj1-x103d.google.com [IPv6:2607:f8b0:4864:20::103d])
	by mail.lfdr.de (Postfix) with ESMTPS id 69D6B22D551
	for <lists+clang-built-linux@lfdr.de>; Sat, 25 Jul 2020 08:04:42 +0200 (CEST)
Received: by mail-pj1-x103d.google.com with SMTP id 8sf7480577pjk.5
        for <lists+clang-built-linux@lfdr.de>; Fri, 24 Jul 2020 23:04:42 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1595657081; cv=pass;
        d=google.com; s=arc-20160816;
        b=WeeBRKEzBDzSS/IZWjEw/qBitir+Ms6Zhuw4lrY3J2uk7chT4rJF0JJQ6qPrM89jNS
         5jjFb4CG//95yyY4FD/u4HrFmNULM2Z7hU4XCsZdH8YC6NLw838IqUTVY3W8PI4tEDb1
         UMqIpvi7K4y/CPqARcM8aTSKAwoQ8HmbnNzMsAlWUslsQyidPCsa0SmdZE+RGlDp7bxx
         ioAo+mp19mD4nQzH+4EmLoufIBDNSljRmGU6xHpTf9G1EQyGZ1CGsI4gNPMoLhdyHeY9
         VrAeZu+MJaDq0bwZXqKaqHgeOw2lcvoUMqtqP5Kt699tJrWeaBGXbyyiNEp2xCtt7JlG
         oszw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature:dkim-signature;
        bh=7p3MT2wZYITeWfo+XU4oEbTp+p9RJfvuQeclG2tSCzU=;
        b=PSQz5AmhJrhg3wqCq6Gj8v0PbTA9PptUhFtQhUqG+Is4Cq77cNFwJSOyVaxFD2bqyJ
         /ITS5D5oF26gN3OHCee2FqE52K/Va8zoU3GdUZyS2Dn8/HhoOtEJOgfhdpowy3s21Tp0
         iBURC9V2xsRD/94z7c28eCnR5uJyXRZr9viTRLe0QvWjzZ2omF5kqWDfT2P4YUFj+fCT
         fIbuAEPKRQfMdNfp+dp1P2q/2off5Ejlrmw66DSGDA97n0vq96WxNAhC7lMaNhCc0ogf
         bXDJLbFqw5NjIJjtHl9a17a2EfhQEjYgIpEFDdwsKPtH+Jal1gG+NYoT1Ro4SIr8uhwp
         0JlA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="n/Y556oH";
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::743 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=7p3MT2wZYITeWfo+XU4oEbTp+p9RJfvuQeclG2tSCzU=;
        b=r4hIKhrfdwJj+lpEdUWTcKMV3QEjJtcsOxYZnv+9ggo1bU5Sevf82oaQLySTHRdLc6
         sYElnQx2h2yfUn9khELeIHoFvQKbAG4p4ESkpcz3Ix2g21aEETxDDaelqyV4nFevpYv4
         Z4wFMA6rD3WK4Qgu2YgkiQB49yaGQULiCfNr7OTOyLM2vBNFE6kdHUVmBGpFJPvXgMUJ
         nGbDr67jdsmbwd6XfyKsDuQjDe6kwx1b6bv7VzijFou3bsK90Ird7qwRjBP3WwNikoAd
         mdiUmPZuBfU+4u3rAa3RY5zhcoIknbKbANyStfOpaSCRmxnfOrXnQ0c6Hf2KmyFPoPP8
         Z0jA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=7p3MT2wZYITeWfo+XU4oEbTp+p9RJfvuQeclG2tSCzU=;
        b=ueUphqvRTQz7zZ6xFp3e/ZpDqifm3JsxvbpAiZ/gyWH3IJ47n4SV2NFkE0hoY/nNt8
         HGQw4hRzlqQpA9A5Mm7N+TZ8e/BvKGNTKxNeprqUMUWkjNraS0U3bYsGGlvmbEmwRdBv
         MJP3evfCqM4dK9OgdDvgwVZIw1WPWqD4gwWDBRcSsArUo2xpJ1z9MX1txFWAvNdU3veu
         DfwY8v+b1Wc9BWNNnFu9GFoXRseJCZlek14hVWQwGBhM1pYngVR8InzJan/ohJ+Vt6Y5
         72mFVxUG/1Vl/0+/vlCgqBFeca8CC+k7wftLbDliPnm8GBVVamfgR1yqE0g2RWwxi23a
         CiCw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=7p3MT2wZYITeWfo+XU4oEbTp+p9RJfvuQeclG2tSCzU=;
        b=eteNd+XwNR2mpxDHksI7Rktp254T7S4rQrK0fizmh6vnF4mQPXab5QMlly8ST2tAJe
         OlH+TEWjPqFZeCAsJo51xXewgkzTZjTjsTzsdEbObhowEWItgHeaOmsQpChEelgWumW9
         DjsXKKqUrrqAxfgJEV2epCKO5yI9oaRAPQ2RK67B5WgK7xHUgDH7LdXMA8rrxplgIM0q
         4fRrtuC0k2N88e2S/BZjDDRqzvYKAM9XT31FLnxpHdlHB/oUNDkMOWGFyFBYiZj5sbHQ
         9VTVJGFB9Tm8JubVZrra+FteN3gwfPz53RfGkwROyPlPx5ryV4Gm7hvlggJT+qqIzn6n
         3tIw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533OG/Ro4y6GUM0UjCtYPPS8FDuigUc73kCjOQAu/j2OGmiess+g
	wBb30m9SSlNPEPnuqIFW+RQ=
X-Google-Smtp-Source: ABdhPJy7gHidunvHxRtDUp8yopb8szFsJzIu4GmGMa5Af4cau2KBnATp46noLAbLsDQrin6A5SgENw==
X-Received: by 2002:a62:8ccb:: with SMTP id m194mr12192996pfd.36.1595657080952;
        Fri, 24 Jul 2020 23:04:40 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:b602:: with SMTP id b2ls4296508pls.3.gmail; Fri, 24
 Jul 2020 23:04:40 -0700 (PDT)
X-Received: by 2002:a17:90a:5208:: with SMTP id v8mr9184136pjh.29.1595657080527;
        Fri, 24 Jul 2020 23:04:40 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1595657080; cv=none;
        d=google.com; s=arc-20160816;
        b=xc7gmAQpUpab9Uk6qpzOsHk8DNyQcp9APY6Dww7jV96EFjEWXMxKvuEFBhvnUNdOcT
         VzyctXHUqkZuYkAU4PPumS0FF/c+9SeqUBi2zwYB75VGWDcaQgsK+htdyvayTs5oPWoq
         eXSRiLKvgoJPDFzG5Z+Q8rOP+F2cyFnPYWBWv9B7yJT9y4BTPwoz+g385/+ySz3p2ouo
         WDsg+Jp6vrdm8dRJlcms51MnB5aE6dQQyg+v6m2cbTJz9Ymrp0b5L/6k6mdmwWgj+eOH
         5U52Qlhl28TBOtqMiOjR5qCFGrh+1NkciuCSNM5LARV+k0Qej9PzSyycc+pMYsfOzQcH
         r7RQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=8vmqEFkkhuc83ajpghYQrC7IIiCrJVCK+qai3kO/Nh0=;
        b=eA8A73KEPATMtXOVtFzLjOI5i/D0LGceZeQOpTduxLdIhJtAD42HCPbWU2K7GzFN+A
         ZSlL/tcZ6GCt89WXGV6ja9Anhr6+Swx8GIq/AeFqLpd3ull0iyaX2w5dQX49q2IoBl40
         ksguVHfOBk5U9nHgpaGedHSh1c6Yz+khmptsgmDCU7KEsUkqejw2+xmQt0o7Czlq/VdL
         ofnCVdUUBJSVHhbZFaXiCCqJ3tEte1sjYNjkM5wNafs4kZs4OOxjvTluK1egsdqzo3CL
         evgbYMP6ZOftCiO06XdNGq6TCYAg415IX4wt23uXD0goHEQFxbGVdDom3kZTd84BNzoA
         EF9w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="n/Y556oH";
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::743 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-qk1-x743.google.com (mail-qk1-x743.google.com. [2607:f8b0:4864:20::743])
        by gmr-mx.google.com with ESMTPS id w2si335754plq.3.2020.07.24.23.04.40
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 24 Jul 2020 23:04:40 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::743 as permitted sender) client-ip=2607:f8b0:4864:20::743;
Received: by mail-qk1-x743.google.com with SMTP id g26so10756289qka.3
        for <clang-built-linux@googlegroups.com>; Fri, 24 Jul 2020 23:04:40 -0700 (PDT)
X-Received: by 2002:a05:620a:22b4:: with SMTP id p20mr13437598qkh.340.1595657079586;
        Fri, 24 Jul 2020 23:04:39 -0700 (PDT)
Received: from localhost.localdomain ([2604:1380:45d1:2600::1])
        by smtp.gmail.com with ESMTPSA id 139sm9781548qkl.13.2020.07.24.23.04.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 24 Jul 2020 23:04:38 -0700 (PDT)
From: Nathan Chancellor <natechancellor@gmail.com>
To: Minas Harutyunyan <hminas@synopsys.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Felipe Balbi <felipe.balbi@linux.intel.com>
Cc: linux-usb@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Nathan Chancellor <natechancellor@gmail.com>,
	stable@vger.kernel.org
Subject: [PATCH] usb: dwc2: Fix parameter type in function pointer prototype
Date: Fri, 24 Jul 2020 23:03:54 -0700
Message-Id: <20200725060354.177009-1-natechancellor@gmail.com>
X-Mailer: git-send-email 2.28.0.rc1
MIME-Version: 1.0
X-Patchwork-Bot: notify
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b="n/Y556oH";       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::743 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

When booting up on a Raspberry Pi 4 with Control Flow Integrity checking
enabled, the following warning/panic happens:

[    1.626435] CFI failure (target: dwc2_set_bcm_params+0x0/0x4):
[    1.632408] WARNING: CPU: 0 PID: 32 at kernel/cfi.c:30 __cfi_check_fail+0x54/0x5c
[    1.640021] Modules linked in:
[    1.643137] CPU: 0 PID: 32 Comm: kworker/0:1 Not tainted 5.8.0-rc6-next-20200724-00051-g89ba619726de #1
[    1.652693] Hardware name: Raspberry Pi 4 Model B Rev 1.2 (DT)
[    1.658637] Workqueue: events deferred_probe_work_func
[    1.663870] pstate: 60000005 (nZCv daif -PAN -UAO BTYPE=--)
[    1.669542] pc : __cfi_check_fail+0x54/0x5c
[    1.673798] lr : __cfi_check_fail+0x54/0x5c
[    1.678050] sp : ffff8000102bbaa0
[    1.681419] x29: ffff8000102bbaa0 x28: ffffab09e21c7000
[    1.686829] x27: 0000000000000402 x26: ffff0000f6e7c228
[    1.692238] x25: 00000000fb7cdb0d x24: 0000000000000005
[    1.697647] x23: ffffab09e2515000 x22: ffffab09e069a000
[    1.703055] x21: 4c550309df1cf4c1 x20: ffffab09e2433c60
[    1.708462] x19: ffffab09e160dc50 x18: ffff0000f6e8cc78
[    1.713870] x17: 0000000000000041 x16: ffffab09e0bce6f8
[    1.719278] x15: ffffab09e1c819b7 x14: 0000000000000003
[    1.724686] x13: 00000000ffffefff x12: 0000000000000000
[    1.730094] x11: 0000000000000000 x10: 00000000ffffffff
[    1.735501] x9 : c932f7abfc4bc600 x8 : c932f7abfc4bc600
[    1.740910] x7 : 077207610770075f x6 : ffff0000f6c38f00
[    1.746317] x5 : 0000000000000000 x4 : 0000000000000000
[    1.751723] x3 : 0000000000000000 x2 : 0000000000000000
[    1.757129] x1 : ffff8000102bb7d8 x0 : 0000000000000032
[    1.762539] Call trace:
[    1.765030]  __cfi_check_fail+0x54/0x5c
[    1.768938]  __cfi_check+0x5fa6c/0x66afc
[    1.772932]  dwc2_init_params+0xd74/0xd78
[    1.777012]  dwc2_driver_probe+0x484/0x6ec
[    1.781180]  platform_drv_probe+0xb4/0x100
[    1.785350]  really_probe+0x228/0x63c
[    1.789076]  driver_probe_device+0x80/0xc0
[    1.793247]  __device_attach_driver+0x114/0x160
[    1.797857]  bus_for_each_drv+0xa8/0x128
[    1.801851]  __device_attach.llvm.14901095709067289134+0xc0/0x170
[    1.808050]  bus_probe_device+0x44/0x100
[    1.812044]  deferred_probe_work_func+0x78/0xb8
[    1.816656]  process_one_work+0x204/0x3c4
[    1.820736]  worker_thread+0x2f0/0x4c4
[    1.824552]  kthread+0x174/0x184
[    1.827837]  ret_from_fork+0x10/0x18

CFI validates that all indirect calls go to a function with the same
exact function pointer prototype. In this case, dwc2_set_bcm_params
is the target, which has a parameter of type 'struct dwc2_hsotg *',
but it is being implicitly cast to have a parameter of type 'void *'
because that is the set_params function pointer prototype. Make the
function pointer protoype match the definitions so that there is no
more violation.

Cc: stable@vger.kernel.org
Fixes: 7de1debcd2de ("usb: dwc2: Remove platform static params")
Link: https://github.com/ClangBuiltLinux/linux/issues/1107
Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
---
 drivers/usb/dwc2/params.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/usb/dwc2/params.c b/drivers/usb/dwc2/params.c
index ce736d67c7c3..fd73ddd8eb75 100644
--- a/drivers/usb/dwc2/params.c
+++ b/drivers/usb/dwc2/params.c
@@ -860,7 +860,7 @@ int dwc2_get_hwparams(struct dwc2_hsotg *hsotg)
 int dwc2_init_params(struct dwc2_hsotg *hsotg)
 {
 	const struct of_device_id *match;
-	void (*set_params)(void *data);
+	void (*set_params)(struct dwc2_hsotg *data);
 
 	dwc2_set_default_params(hsotg);
 	dwc2_get_device_properties(hsotg);

base-commit: 23ee3e4e5bd27bdbc0f1785eef7209ce872794c7
-- 
2.28.0.rc1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200725060354.177009-1-natechancellor%40gmail.com.
