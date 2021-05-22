Return-Path: <clang-built-linux+bncBDYJPJO25UGBBRV3UGCQMGQE232XCZQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x839.google.com (mail-qt1-x839.google.com [IPv6:2607:f8b0:4864:20::839])
	by mail.lfdr.de (Postfix) with ESMTPS id E968838D2C8
	for <lists+clang-built-linux@lfdr.de>; Sat, 22 May 2021 03:26:31 +0200 (CEST)
Received: by mail-qt1-x839.google.com with SMTP id a7-20020a05622a02c7b02901fbef073c99sf10601465qtx.15
        for <lists+clang-built-linux@lfdr.de>; Fri, 21 May 2021 18:26:31 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1621646791; cv=pass;
        d=google.com; s=arc-20160816;
        b=vpxobMynykeUrML29i0P+mf9oYKLl+plG1atiB9/AUIil5Lr2kLJH9dXAp3H9LD+xl
         1mVgvApLIiK2lY215BobTEuplYoyJrH6fN9eEgtW4i8AyFwSsGYFdpCGjp6zHKgdPqrN
         Ao7o+9T+wiChRpf7bVzFArGDmhrZ+IOLpcEMLEWQGcPVf11/Zgj4Tebx/efdir63mxtX
         Qq+LVZoDr9bc48uintSG/NdZx9ghU19y8Pv8DqiPUpa5DqjyNJ3kyJvodS243z8wj1fx
         im0P6rmwARFsVom8NR4ise8D3cD1/NaPiX94fd7ojtt9s3fCdzyYpfSBpBdMfheM7oBt
         2EHQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=V0DMIE0VnKQMoPsWEwlRhvQajUaxSgPcb8kSVhI5tAg=;
        b=Cj28JtrNBVX0zL4d9bkwMm/4WeuisZlJ19PNXZA7P4S+b5+L8BH+Cn1H3D5Gd6sFGB
         8lYKxKZzCGiPgQiHokNsx8Jl9UKBxSqMHwzFVg43Zxo5cSH/n8su4GqgcENhe97Q8ily
         VGZu9GcvWVZYArXIOewKsCZmjEyBy/DTJp4hPF6BdLMkexiH3Em43Ld90ys2rkGwPCo8
         OQWgwk3fjurazFHNJuOe8VcXK+fJ5ML74RFuoLVoitxcKN76xr2AuRFswUPTGvviy6kA
         Q2XnqWHl5iVVG59+VYIT9yYZPMQKP2OT0B8kWTaDHalu62pmPGlWxqyak18dJRoJJugO
         0brw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=aV10v99J;
       spf=pass (google.com: domain of 3xl2oyawkac8yopdlfwytpcdrzzrwp.nzx@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::f49 as permitted sender) smtp.mailfrom=3xl2oYAwKAC8YOPdLfWYTPcdRZZRWP.NZX@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=V0DMIE0VnKQMoPsWEwlRhvQajUaxSgPcb8kSVhI5tAg=;
        b=IatNOWpwBP0sPKwCvIevHxx1VUdlJWF5v0wbZxCTGbzgobCJSl1ySLFLYkTcS3l2i+
         GuJzz1gFpjqceV0XuWyJnCRBsDFsHp/oRG3EpKUTEzaDjjktEis02RLlDpit0RHzoKTX
         kp7vHBd5X9OctZA8NvJWEkBar/fQ0JY0zHlP5hRp+gjiL0aje/ruOSYtVWU2u8k/KmZ9
         RsXXtIN4elFpclXbPxhWiqUC2VFMtQ7E+9vYLexEk4eD7lutmcwC6Ty9IBmkxT7xSmrf
         EWMJGgij2sY19VHSy8eTbj7gT2X/7dq2r2J6LVVADZ2iXsgXpvwxllDOPQ9LPT220Vdr
         STQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=V0DMIE0VnKQMoPsWEwlRhvQajUaxSgPcb8kSVhI5tAg=;
        b=O8Yihr0JVX5cnwxQjP53p5aW0YWXet/Uhsc2iMV3ZlBtJeTVhmBYtJy3hx979XmP82
         qsosnbiqBuwMAGQjCtcW65777DpAKk1UrQqXecZzKEfxiKATTZ94kuVrt6ahdN6vb2we
         2QuInXn2kfci4S0Oqm+zXw/EHJit14yy/06h9CeubY7fN5Sa5NmN/+6BzRpNuEaxI7+3
         CcESqhxAZ/H65vFEaFd9zRCLE2ZznM/V8jPKdE/Ij7O1g78ew8SITbsv2CTmgkWDKn9A
         HtuNkIr+mms1AwcSq8Uz5y5F1sVrFhues7D7A31+r4SVZ6VbzOozH5969WmPV4XuiI9K
         w42A==
X-Gm-Message-State: AOAM5326p+KEcpOfrLD0//s2reJALI4vnyEvBI+Q899X1vwK8fS3xzlW
	pyrH6UUa2GPEOeDb7/8fISg=
X-Google-Smtp-Source: ABdhPJx9aQKVR5KSGtr0mrGw78rbMGWvU9wLyWs14W0fQscDBJmJ8j/dKX4UugnCgyccM4J8P1DGjQ==
X-Received: by 2002:a37:987:: with SMTP id 129mr3107356qkj.127.1621646790902;
        Fri, 21 May 2021 18:26:30 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a37:9e94:: with SMTP id h142ls829226qke.1.gmail; Fri, 21 May
 2021 18:26:30 -0700 (PDT)
X-Received: by 2002:a37:2791:: with SMTP id n139mr3069792qkn.341.1621646790516;
        Fri, 21 May 2021 18:26:30 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1621646790; cv=none;
        d=google.com; s=arc-20160816;
        b=0PZPVuQ4Ku48TrzmV8z2zEMPFCTmSYpEdG7FYcchWHD7YA0xWktxQ3rYq7TOI7GhH6
         xSUtsoiAfzQgRVuVnhmn4+yQFa9HD4o8PIi3qwSZygYvNY8uJBh7tKt4MM6NNgGcKO4z
         2uzkXXD829f72x1wA6TqFaGMLp08ln9eOSm/uL0EVkxDqcUA1O4cK/YNe1XcuAcF+jDv
         Qf4PfQBzy7vvkqN5Ny80Itd8kPUq2HwCj/S80z/KdaA7V/Af7Drzh9JvEj3vPMC6V5Zr
         Ix2jT0wDaby5JvkI/SDqIhBp2IWd07hoQVScHMpWAm4V5glxD3TJLt3m7mVEPErEWT/C
         Qq5Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=gS3/FjH30criEdlZq0ZHdAnAGJSA0ILT1HmCoVmE9Yc=;
        b=tEeb14yYZIVZxlqcQ9y0b0GkjMRAy//NBQPcLrgUgrRodOydEbl2rjTEvUhj0fBH/u
         PmaCu2KxoIpgJS3psar3ktV4mwyRDH1cksyeS49fgHwDN9U1oJ0spXjoZFyo6Gmv8XMp
         fnevQHmwxO5Wn+axfXQ4Y9Nw92VfL1zQHH9G1ERA+WHSWD1mtCkruMgYpaHPBKyAWQu7
         zfkYkBS/rnQVOx4phdgiB2jr7Lpc2FQVDCKk51WR4roAiYSL2IRf+7ECuw9g3hi/tG59
         urLfXC1QsFKCngYvLURmAWgLvasdyrMw1fOEI6oc2nYFn0vMlW/h21n6DpIUPxl9u9Va
         Yi2g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=aV10v99J;
       spf=pass (google.com: domain of 3xl2oyawkac8yopdlfwytpcdrzzrwp.nzx@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::f49 as permitted sender) smtp.mailfrom=3xl2oYAwKAC8YOPdLfWYTPcdRZZRWP.NZX@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-qv1-xf49.google.com (mail-qv1-xf49.google.com. [2607:f8b0:4864:20::f49])
        by gmr-mx.google.com with ESMTPS id z13si1109113qtq.4.2021.05.21.18.26.30
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 21 May 2021 18:26:30 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3xl2oyawkac8yopdlfwytpcdrzzrwp.nzx@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::f49 as permitted sender) client-ip=2607:f8b0:4864:20::f49;
Received: by mail-qv1-xf49.google.com with SMTP id b5-20020a0cc9850000b02901eece87073bso17498328qvk.21
        for <clang-built-linux@googlegroups.com>; Fri, 21 May 2021 18:26:30 -0700 (PDT)
X-Received: from ndesaulniers1.mtv.corp.google.com ([2620:15c:211:202:e55d:7de8:da36:30e8])
 (user=ndesaulniers job=sendgmr) by 2002:a0c:f64e:: with SMTP id
 s14mr16600523qvm.56.1621646790253; Fri, 21 May 2021 18:26:30 -0700 (PDT)
Date: Fri, 21 May 2021 18:26:24 -0700
In-Reply-To: <CAK7LNAS_LpZnweujqVwZ1kL0eDYR726k35U_yx1djqNE0bk6Rw@mail.gmail.com>
Message-Id: <20210522012626.2811297-1-ndesaulniers@google.com>
Mime-Version: 1.0
References: <CAK7LNAS_LpZnweujqVwZ1kL0eDYR726k35U_yx1djqNE0bk6Rw@mail.gmail.com>
X-Mailer: git-send-email 2.31.1.818.g46aad6cb9e-goog
Subject: [PATCH v2] Makefile: fix GDB warning with CONFIG_RELR
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Will Deacon <will@kernel.org>
Cc: Catalin Marinas <catalin.marinas@arm.com>, linux-arm-kernel@lists.infradead.org, 
	Lee Jones <lee.jones@linaro.org>, Masahiro Yamada <masahiroy@kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Fangrui Song <maskray@google.com>, 
	Elliot Berman <eberman@quicinc.com>, Sami Tolvanen <samitolvanen@google.com>, 
	Peter Collingbourne <pcc@google.com>, Michal Marek <michal.lkml@markovi.net>, linux-kbuild@vger.kernel.org, 
	linux-kernel@vger.kernel.org, Nick Desaulniers <ndesaulniers@google.com>, 
	Nathan Chancellor <nathan@kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=aV10v99J;       spf=pass
 (google.com: domain of 3xl2oyawkac8yopdlfwytpcdrzzrwp.nzx@flex--ndesaulniers.bounces.google.com
 designates 2607:f8b0:4864:20::f49 as permitted sender) smtp.mailfrom=3xl2oYAwKAC8YOPdLfWYTPcdRZZRWP.NZX@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Nick Desaulniers <ndesaulniers@google.com>
Reply-To: Nick Desaulniers <ndesaulniers@google.com>
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

GDB produces the following warning when debugging kernels built with
CONFIG_RELR:

BFD: /android0/linux-next/vmlinux: unknown type [0x13] section `.relr.dyn'

when loading a kernel built with CONFIG_RELR into GDB. It can also
prevent debugging symbols using such relocations.

Peter sugguests:
  [That flag] means that lld will use dynamic tags and section type
  numbers in the OS-specific range rather than the generic range. The
  kernel itself doesn't care about these numbers; it determines the
  location of the RELR section using symbols defined by a linker script.

Link: https://github.com/ClangBuiltLinux/linux/issues/1057
Suggested-by: Peter Collingbourne <pcc@google.com>
Reviewed-by: Nathan Chancellor <nathan@kernel.org>
Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
---
Changes V1 -> V2:
* rebase
* pick up Nathan's reviewed by tag.

 Makefile                      | 2 +-
 scripts/tools-support-relr.sh | 3 ++-
 2 files changed, 3 insertions(+), 2 deletions(-)

diff --git a/Makefile b/Makefile
index 0ed7e061c8e9..2dbb56f831d4 100644
--- a/Makefile
+++ b/Makefile
@@ -1031,7 +1031,7 @@ LDFLAGS_vmlinux	+= $(call ld-option, -X,)
 endif
 
 ifeq ($(CONFIG_RELR),y)
-LDFLAGS_vmlinux	+= --pack-dyn-relocs=relr
+LDFLAGS_vmlinux	+= --pack-dyn-relocs=relr --use-android-relr-tags
 endif
 
 # We never want expected sections to be placed heuristically by the
diff --git a/scripts/tools-support-relr.sh b/scripts/tools-support-relr.sh
index 45e8aa360b45..cb55878bd5b8 100755
--- a/scripts/tools-support-relr.sh
+++ b/scripts/tools-support-relr.sh
@@ -7,7 +7,8 @@ trap "rm -f $tmp_file.o $tmp_file $tmp_file.bin" EXIT
 cat << "END" | $CC -c -x c - -o $tmp_file.o >/dev/null 2>&1
 void *p = &p;
 END
-$LD $tmp_file.o -shared -Bsymbolic --pack-dyn-relocs=relr -o $tmp_file
+$LD $tmp_file.o -shared -Bsymbolic --pack-dyn-relocs=relr \
+  --use-android-relr-tags -o $tmp_file
 
 # Despite printing an error message, GNU nm still exits with exit code 0 if it
 # sees a relr section. So we need to check that nothing is printed to stderr.

base-commit: 45af60e7ced07ae3def41368c3d260dbf496fbce
-- 
2.31.1.818.g46aad6cb9e-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210522012626.2811297-1-ndesaulniers%40google.com.
