Return-Path: <clang-built-linux+bncBCM33EFK7EJRBUPORLXAKGQE7PPRV7A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ed1-x53f.google.com (mail-ed1-x53f.google.com [IPv6:2a00:1450:4864:20::53f])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F3ECF15CA
	for <lists+clang-built-linux@lfdr.de>; Wed,  6 Nov 2019 13:06:42 +0100 (CET)
Received: by mail-ed1-x53f.google.com with SMTP id p55sf17110448edc.5
        for <lists+clang-built-linux@lfdr.de>; Wed, 06 Nov 2019 04:06:42 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1573042002; cv=pass;
        d=google.com; s=arc-20160816;
        b=naFs/OFeKoW8TaaspLd7a8RLmm8rd0yCkJJ5nn3Ez64i+YG5UpuH1MEIN1pjQA4xs+
         2d7a+buZplPVDdOwnRbF94SlJuXVLa1cUSBjmTiWenky9ruDZ+UrWrjKB0sYWrBcqS9n
         gjqN0DO65MZWyUb+kHjRvPLGz9rIPwiqf+ic9Z5NWF0R6lQ2DXggzGJ/BL6yc9290jXn
         rpn4zWsnQ8FibHHrx2e8lOrSHfltjC6zBEnqHVBprF6ewUahExVGyVHF+j+t1tnhkOoJ
         V/V+yWA6/pcvuIdy43Ig1B70kyd6wQPktvf5FoSgbr0ruHVU3gpTE6IEXz2e+ubJoOX5
         SOBQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:references:in-reply-to:message-id
         :date:subject:cc:to:from:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=WIrEUII+o1+YRMAYlVxFadltpl08SF3klyJEk0HgkvM=;
        b=Hv79CFr56GBPEEYjN1JtEoH25WyBe43ZMeUD5Yb0dp676RZb66XELJHyS7fWa2wdT3
         Q+aL1es/S1NdeBzLzHzFLqwLTennvWjdUng0aFanzZNJCc4k7NnQDgqhyPCzumIvLU56
         O7zf+ZKlSWfXDCUPSsDJfN05SJEd79HEIb8ekesll6Sy8Yz6ah9MmDTNzdfDndatTLDn
         cdvKCvOhe2+6ySqykFCxR+c54ZayiFT/ftI7tJW3C/374UPFHHU0yoJI2no6JiOlstQn
         yEChox8W1rCLRQmOsGvsBsuWDT9RAA/VVSuVAkJeqStlaUkdPXUePMnact8i6UwtysJP
         /m8A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=J9Lle0Vg;
       spf=pass (google.com: domain of ilie.halip@gmail.com designates 2a00:1450:4864:20::444 as permitted sender) smtp.mailfrom=ilie.halip@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:from:to:cc:subject:date:message-id:in-reply-to
         :references:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=WIrEUII+o1+YRMAYlVxFadltpl08SF3klyJEk0HgkvM=;
        b=ZWCo+Km1XvRirWoOx6P7uGA0D6lHrd1qZTtRvRlFJ1huLaTlSCJ6UbyoXnc44NnG58
         x9jUQ5Jjd56ki4SmtgrbEzigSMSjeGepJY9lWrUCQGM7EBuvEmD/Lji5Wn3k2S1LbYF0
         WsMM3WqIfs5Qg65cs9UiqdJ/WZPREnPAJFsb5ex+nqYpfT9kv7SKNAvcEmdgg2JBqvM3
         IT7Zg3mNJvGx/kwuQ3KHVb6nL21ctF07FjQ4kjn6GPltgBvu2uMrSTIcAzmrs29TqbqR
         ZV4gOsZz/nH9pWgx8txsVpWQBgHrdBlyBLSoI9Yl63ddUFNb7yeuJ3wyxetuaPtG4ALW
         P9sQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:to:cc:subject:date:message-id:in-reply-to
         :references:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=WIrEUII+o1+YRMAYlVxFadltpl08SF3klyJEk0HgkvM=;
        b=G4CN0VURaZIMhIZk4gwlXPD8OsxdQEny/qZbhZdqKREGenuxpVkReZ6btnROdMFHdq
         aQVbYgUQY9rBnlElSy9HghcOvgtGIslfLRoUwXVuUwiRWGt7RerYwqyp0Skt5UJ/e8tX
         gOVaKRUJGi/Ou2rstnWRln0WjHbLhdWhtfG+O1GJsZy84s/iID3d8EvGXn0D07R9iNpw
         AeXXhBKtAra2aMy/0wNGD0oKsttTAZsL7PkDs180vW2OkwVMZGX59cKMJrmU6t9UgFhg
         FRUK2xD1lBD9qENXTTq2E+Pq1uAP29MK2koF9SdMJ9ZPEFAVTsm0T7axW4CRTTqFE1qW
         v2nw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:to:cc:subject:date
         :message-id:in-reply-to:references:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=WIrEUII+o1+YRMAYlVxFadltpl08SF3klyJEk0HgkvM=;
        b=VyOPiL8/fEmxN6KwyBjz5ECnZlQ+cSFZFUysClqzgwQFLZDmP+keDvX8FESasSiPiF
         9NiiHzABN22okrGro6Nm+sOQX/iehmvB2fUzIWDk+Oh83oZiGkMDHIgFExgPkgdz1Z4K
         5b5M8ghCRnLBDLIBDc2vvKSQY2KBWW52Hi/Sb+fYO5kritIfdC9ppRQcOq5uTAQqzElj
         qziWO14mrHTKSd/rlGiJDUpJsTYHTDYGvUlI2tDHYGjrqCncAr+8GhKhXEhiCBAHOYFv
         G3xdl15yyqcem+Gg98IZeIDevq6hgEIuO0HNY7k38J9y4dUtdhjUnSi/spLRVDd0uBAu
         x8EA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVGPnizdDwuxwROpjTdN9C5XNcpQSRfCY1x4rrjndHbIxDB4QTl
	ruAkWLA/Kyf2OtgMOL4Tqws=
X-Google-Smtp-Source: APXvYqyGyB6BedFJ9HhHdQ4OtHGZuzkojDIDbkD6qdizZ+YDWfN8LiEiQPaBK4Fu7wJ/lmOOcCbDNw==
X-Received: by 2002:a50:ec89:: with SMTP id e9mr2255698edr.104.1573042001960;
        Wed, 06 Nov 2019 04:06:41 -0800 (PST)
MIME-Version: 1.0
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:906:b857:: with SMTP id ga23ls482205ejb.6.gmail; Wed, 06
 Nov 2019 04:06:41 -0800 (PST)
X-Received: by 2002:a17:906:2d49:: with SMTP id e9mr33840535eji.240.1573042001358;
        Wed, 06 Nov 2019 04:06:41 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1573042001; cv=none;
        d=google.com; s=arc-20160816;
        b=nNXhHy6oxAFHwOhaSXB4kO//zak+Vu4DJdlg4CnU+k9C/kRNblh40UHVtNLcjkEAyi
         I/5Y6IxuntGaE2dqtCblzD3ds3CE1JCc17dbK3EEuevRTskbwJa37LtXN211i2rBJXad
         +s/a6HoXqO9hb3VxywQ9qdHOTqo/i9KLZ7s5lv4NwTDKzXT3KdpJ4xhldmxKHiAEnuVm
         txw9iTgZyLxXd+vr+y1Lf8gc98NWNPVaMHm0cjCZBtY6tLMcmvQxjZq4X14SA4UXAe1n
         pJsz1k6eXUHM7f7x5llEsRXecR0F6nN7kcjf1hxK3aCPeoQLp3OydgYnDVX9BHfhrqxK
         4N+w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature;
        bh=hbMBIvBvZ32LNNu+KvWneSx0Eevf4k95+VeOqx6lZcc=;
        b=FAPnY7ScOLY97H2IgtDJq/FUdXhQ4/aoogNqXMpLH32xTpLFmj0ClmklPf+e93TuyD
         baUg+MV6XLnGWaZpDq+qAsjZi/nGZLa3FltHmG73+n+5t9gSvXlFpjktP94zH5EQ0O52
         v2i+IuQyg6dvhxnpaQrX8U5HK2QWp9meOWKtuXjrT7/dw+sTGmIIE3y6m4U2IF3y/tU7
         XlFXX7+6LSMoPFqu+Yjy5Z4lf8kF+MynMJPDLyIERfMOZzWpx3LsQRSAfq3pB4UwWSxM
         pSdGkFElYSCLgunOeMsIPpgZC+fQB9C2g8/MtBC7H3oLg7ikQ8uOQTij5UFwRSJ7XUEA
         xQzQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=J9Lle0Vg;
       spf=pass (google.com: domain of ilie.halip@gmail.com designates 2a00:1450:4864:20::444 as permitted sender) smtp.mailfrom=ilie.halip@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-wr1-x444.google.com (mail-wr1-x444.google.com. [2a00:1450:4864:20::444])
        by gmr-mx.google.com with ESMTPS id a15si943887ejj.0.2019.11.06.04.06.41
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 06 Nov 2019 04:06:41 -0800 (PST)
Received-SPF: pass (google.com: domain of ilie.halip@gmail.com designates 2a00:1450:4864:20::444 as permitted sender) client-ip=2a00:1450:4864:20::444;
Received: by mail-wr1-x444.google.com with SMTP id a11so25429989wra.6
        for <clang-built-linux@googlegroups.com>; Wed, 06 Nov 2019 04:06:41 -0800 (PST)
X-Received: by 2002:a05:6000:350:: with SMTP id e16mr2541228wre.276.1573042001027;
        Wed, 06 Nov 2019 04:06:41 -0800 (PST)
Received: from localhost.localdomain ([2a02:a58:8166:7500:885d:9dcb:243a:788b])
        by smtp.gmail.com with ESMTPSA id t133sm2702040wmb.1.2019.11.06.04.06.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 06 Nov 2019 04:06:40 -0800 (PST)
From: Ilie Halip <ilie.halip@gmail.com>
To: linux-kernel@vger.kernel.org
Cc: Nick Desaulniers <ndesaulniers@google.com>,
	Ilie Halip <ilie.halip@gmail.com>,
	Thomas Gleixner <tglx@linutronix.de>,
	Ingo Molnar <mingo@redhat.com>,
	Borislav Petkov <bp@alien8.de>,
	"H. Peter Anvin" <hpa@zytor.com>,
	x86@kernel.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH V2] x86/boot: explicitly place .eh_frame after .rodata
Date: Wed,  6 Nov 2019 14:06:28 +0200
Message-Id: <20191106120629.28423-1-ilie.halip@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <CAKwvOdmSo=BWGnaVeejez6K0Tukny2niWXrr52YvOPDYnXbOsg@mail.gmail.com>
References: <CAKwvOdmSo=BWGnaVeejez6K0Tukny2niWXrr52YvOPDYnXbOsg@mail.gmail.com>
X-Original-Sender: ilie.halip@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=J9Lle0Vg;       spf=pass
 (google.com: domain of ilie.halip@gmail.com designates 2a00:1450:4864:20::444
 as permitted sender) smtp.mailfrom=ilie.halip@gmail.com;       dmarc=pass
 (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

When using GCC as compiler and LLVM's lld as linker, linking
setup.elf fails:
      LD      arch/x86/boot/setup.elf
    ld.lld: error: init sections too big!

This happens because ld.lld has different rules for placing
orphan sections (i.e. sections not mentioned in a linker script)
compared to ld.bfd.

Particularly, in this case, the merged .eh_frame section is
placed before __end_init, which triggers an assert in the script.

Explicitly place this section after .rodata, in accordance with
ld.bfd's behavior.

Signed-off-by: Ilie Halip <ilie.halip@gmail.com>
Link: https://github.com/ClangBuiltLinux/linux/issues/760
---

Changes in V2:
 * removed wildcard for input sections (.eh_frame* -> .eh_frame)

 arch/x86/boot/setup.ld | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/x86/boot/setup.ld b/arch/x86/boot/setup.ld
index 0149e41d42c2..30ce52635cd0 100644
--- a/arch/x86/boot/setup.ld
+++ b/arch/x86/boot/setup.ld
@@ -25,6 +25,7 @@ SECTIONS
 
 	. = ALIGN(16);
 	.rodata		: { *(.rodata*) }
+	.eh_frame	: { *(.eh_frame) }
 
 	.videocards	: {
 		video_cards = .;
-- 
2.17.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191106120629.28423-1-ilie.halip%40gmail.com.
