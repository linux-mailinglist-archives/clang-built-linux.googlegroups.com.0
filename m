Return-Path: <clang-built-linux+bncBC2ORX645YPRBV7PUP5QKGQECDWO6DI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x43d.google.com (mail-wr1-x43d.google.com [IPv6:2a00:1450:4864:20::43d])
	by mail.lfdr.de (Postfix) with ESMTPS id 985B427324C
	for <lists+clang-built-linux@lfdr.de>; Mon, 21 Sep 2020 20:58:31 +0200 (CEST)
Received: by mail-wr1-x43d.google.com with SMTP id g6sf6288270wrv.3
        for <lists+clang-built-linux@lfdr.de>; Mon, 21 Sep 2020 11:58:31 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1600714711; cv=pass;
        d=google.com; s=arc-20160816;
        b=etEYC+PtAEn6qhQZ29m2ISmWGg0bKW6TtwSgPRwjwGMMHZBtvLWutAliFKoDZn0+oh
         yDjsSNfdTIYCr/nnuBZIZvEVtNWuezW4A04B+FK7e1LDiAPdoVUJsJXNJxGoqsjiazGs
         bizSvJao5lFWv/rldnaxICcbMC0pVP4yV0ERXCPYt52NDz4SSNGRTg8CSUJV7KXksxCG
         5Qmv8cbnOa0WJ0JsxGmPjinhu4M4IRqqaQ07Sf0ogx8/UsbwjK9MJmXJHNV1YSauDrXB
         R/Pv430Skj7iTAXuyxWL9sHxAlVU7QHjZE15upDY3iAE6hHC3HfEpBHY10Bn5d9MlyH7
         teOg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=23bLZmUrF07S2S7Ej4aAnwCGLU/YxZ3trrTLaE07HCQ=;
        b=nMttsJADEfeOf1cd7TfWM/Jsx3FGTCRhIcnyIeWnTLFDvjNuxiUcBsk7e3uiqMs1Ui
         zt3KTXFqG+EWpEVqSH6wSkIim/hoJlHh3ZrG0ZWwJEhaDs4O3lT3fmsKE0NgJa+VyIDy
         hzFEPwM6uTVsuvsPuoMRPvEDPy3j/1UYP4mi6xFm+wTY0beTeOWcLorI0cbh3TAwrPaj
         No7TQF7/V5kANV8PorhZbHqY0GZpNet8KuOVY/ZG6CzOn8j1NWetWmavE/F+WybC9+4J
         yPCk6rXDlb+xbDHn0R52N3Wvl0/uH4BwGXCBsySqJdr8RI4yJp7ZPoOyTGnKyPMmPuiV
         zDPw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=VwM6SxPc;
       spf=pass (google.com: domain of samitolvanen@google.com designates 2a00:1450:4864:20::644 as permitted sender) smtp.mailfrom=samitolvanen@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=23bLZmUrF07S2S7Ej4aAnwCGLU/YxZ3trrTLaE07HCQ=;
        b=moWDDlMZmPhLXaeRCBlpV+gqyMXqw7SoEqLAS4dSiSS3YTWA5jkzwmSkwaKkblsDVe
         8pT5bCatGAXlRxzJRka4kp615RnfdV3QR2EJN6AipeXdf9ue6fmaqmMN4p05C0q3PFY2
         jCCCEMzB4DGueByIGcHSIlAp7k5WFJp41tAOm+LKSt6YsfWNTdsTT5KSSpfjZrnRD2E2
         Batjibn2eS+MZ/nhhdTkZmOvLV6bSGaShEqR0zLQDaTC2cLK30sZXRtSV3ixiwpD2IPz
         DeTFF5Ay+RJIXqnS5vBnFc5sUuxPrI3qa5Qui2vd+wUQkYiCEkKlKxhUJ4TMYq3tx3Dd
         NUnw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=23bLZmUrF07S2S7Ej4aAnwCGLU/YxZ3trrTLaE07HCQ=;
        b=BTBGQadYUql1uZLq1jajKOh0OJKH3muPZ9VxQdmtWpr3QSkXwPdLAhHvRsc3jS1xGs
         qoAEs0gjLUcyFYlHYj05YYTtw5OHNyW6J4zyEI7GYwwDOn5tgYXCkOs5A6K/W597EArY
         Ve2rUiLDYutFeX0yyIiax0UjkHQJRcsKc6I7eABUYPuJgdeamims4sHWR6lHK1VPT6es
         hUniTSRnkK8zjGSksknP3FXVnbyM2zL6B9FdywctLcWI6pHrr54ltfN+2sgYieW8OfdI
         GVwPHnXav+PVqYGlRm6z31Gl1+43EzW6ZysOYiCxs285eqARU3aO1WQbrWgpkVC3DE6l
         VJ1A==
X-Gm-Message-State: AOAM532s2g2UbnSch38ypz6S8LXQJcK9honormuvFQfv3+gOab2ZS6TU
	E5lCOr27pV/REXtWnDyOENs=
X-Google-Smtp-Source: ABdhPJzL8HnfGuLKx/KY4ZTTcEU3cxfGhwfKeEHMX96vZU+BKY6JPHYzRIC1fRBfKYpOZKZzZXbEWg==
X-Received: by 2002:adf:f585:: with SMTP id f5mr1321552wro.64.1600714711406;
        Mon, 21 Sep 2020 11:58:31 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:adf:e3c3:: with SMTP id k3ls1035520wrm.1.gmail; Mon, 21 Sep
 2020 11:58:30 -0700 (PDT)
X-Received: by 2002:a5d:674c:: with SMTP id l12mr1170204wrw.325.1600714710473;
        Mon, 21 Sep 2020 11:58:30 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1600714710; cv=none;
        d=google.com; s=arc-20160816;
        b=vdS1knGXF/rpgc4kbp6qOtKyW08PVUToqkxv9yqGm5IpBOIy2pG960RY1elxr81woW
         gPodip8g9+DF1j45Y3XhS+GwL1GMG6CflQ5zgyJQBGPU3XWzzMWyJiaVdiYn1Z4kwuTx
         YZikUKQ76FgGx7FriBKO8HHybgz3MIcpt/BtXypwliAP5nx9vWk/AMcpDoYoE9+wvj+4
         8JZgZ3ZyoIaoxfwQ3qBYVBNNsHKxJG9R0vwpEWcn/gWvGJqUK98TzVmCoD+a9DwePuQv
         TFJK4mQbTTyS/2tA7J2THikf+AnDRcfEIaOmIVhxGmJBarUkvTLUw74I01Tu3gwzVYun
         TWkw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=rrEufNVuY5dCBzinzTyZLnRAK6NDit4k748EnZ9ZGyU=;
        b=UM1fjk8u+Gq9tWx7g1wFXZ4TYvLC2wYn0H9eo2Xzb2xEblXIAIu57cxTh7f8bRSphp
         Gx/GGzLpYSHa+oEBDfrXlXd7F/O0QN5ahV9wNDvI4u9N4LA8PsFJOnzh+vHNMPrzprd6
         ZLuDv71wIHA1f5ebYDBHwh/U+38EMONeQp5F/YpQ9K7tCoT2eOB3Yl0/2Ks9RVO4y9pG
         PZcJC5qblohwb9Q7JlMsJJIBUV4NpgN3TZEDr1mshvug5C8qvTzI9jeQP2Cxass94I6R
         n9RuHP4jWjlcGTkCngdNGOszcBGgueWE4zQmglC9QMtDRggmq5FS5CIJ6xSswQtBwgRA
         ikbA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=VwM6SxPc;
       spf=pass (google.com: domain of samitolvanen@google.com designates 2a00:1450:4864:20::644 as permitted sender) smtp.mailfrom=samitolvanen@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-ej1-x644.google.com (mail-ej1-x644.google.com. [2a00:1450:4864:20::644])
        by gmr-mx.google.com with ESMTPS id w2si264145wrr.5.2020.09.21.11.58.30
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 21 Sep 2020 11:58:30 -0700 (PDT)
Received-SPF: pass (google.com: domain of samitolvanen@google.com designates 2a00:1450:4864:20::644 as permitted sender) client-ip=2a00:1450:4864:20::644;
Received: by mail-ej1-x644.google.com with SMTP id gx22so10211784ejb.5
        for <clang-built-linux@googlegroups.com>; Mon, 21 Sep 2020 11:58:30 -0700 (PDT)
X-Received: by 2002:a17:906:ecf1:: with SMTP id qt17mr960026ejb.158.1600714709946;
 Mon, 21 Sep 2020 11:58:29 -0700 (PDT)
MIME-Version: 1.0
References: <20200918201436.2932360-1-samitolvanen@google.com>
 <20200918201436.2932360-14-samitolvanen@google.com> <202009181427.86DE61B@keescook>
In-Reply-To: <202009181427.86DE61B@keescook>
From: "'Sami Tolvanen' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 21 Sep 2020 11:58:19 -0700
Message-ID: <CABCJKuf5pKqEDaAKix5CaUmv92M5HOAB-psdNg=awF7BDZ+yvA@mail.gmail.com>
Subject: Re: [PATCH v3 13/30] kbuild: lto: postpone objtool
To: Kees Cook <keescook@chromium.org>
Cc: Masahiro Yamada <masahiroy@kernel.org>, Will Deacon <will@kernel.org>, 
	Peter Zijlstra <peterz@infradead.org>, Steven Rostedt <rostedt@goodmis.org>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, "Paul E. McKenney" <paulmck@kernel.org>, 
	Nick Desaulniers <ndesaulniers@google.com>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Kernel Hardening <kernel-hardening@lists.openwall.com>, 
	linux-arch <linux-arch@vger.kernel.org>, 
	linux-arm-kernel <linux-arm-kernel@lists.infradead.org>, 
	linux-kbuild <linux-kbuild@vger.kernel.org>, LKML <linux-kernel@vger.kernel.org>, 
	linux-pci@vger.kernel.org, X86 ML <x86@kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: samitolvanen@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=VwM6SxPc;       spf=pass
 (google.com: domain of samitolvanen@google.com designates 2a00:1450:4864:20::644
 as permitted sender) smtp.mailfrom=samitolvanen@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Sami Tolvanen <samitolvanen@google.com>
Reply-To: Sami Tolvanen <samitolvanen@google.com>
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

Nick and 0-day bot both let me know that there's a typo in this patch,
which I'll fix in v4:

diff --git a/scripts/Makefile.lib b/scripts/Makefile.lib
index f7daa59ff14f..00d7baaf7949 100644
--- a/scripts/Makefile.lib
+++ b/scripts/Makefile.lib
@@ -223,7 +223,7 @@ dtc_cpp_flags  = -Wp,-MMD,$(depfile).pre.tmp
-nostdinc                    \
 objtool_args =                                                         \
        $(if $(CONFIG_UNWINDER_ORC),orc generate,check)                 \
        $(if $(part-of-module), --module,)                              \
-       $(if $(CONFIG_FRAME_POINTER), --no-fp,)                         \
+       $(if $(CONFIG_FRAME_POINTER),, --no-fp)                         \
        $(if $(CONFIG_GCOV_KERNEL), --no-unreachable,)                  \
        $(if $(CONFIG_RETPOLINE), --retpoline,)                         \
        $(if $(CONFIG_X86_SMAP), --uaccess,)                            \

Sami

On Fri, Sep 18, 2020 at 2:27 PM Kees Cook <keescook@chromium.org> wrote:
>
> On Fri, Sep 18, 2020 at 01:14:19PM -0700, Sami Tolvanen wrote:
> > With LTO, LLVM bitcode won't be compiled into native code until
> > modpost_link, or modfinal for modules. This change postpones calls
> > to objtool until after these steps, and moves objtool_args to
> > Makefile.lib, so the arguments can be reused in Makefile.modfinal.
> >
> > Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
>
> Thanks for reorganizing this!
>
> Reviewed-by: Kees Cook <keescook@chromium.org>
>
> --
> Kees Cook
>
> --
> You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202009181427.86DE61B%40keescook.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CABCJKuf5pKqEDaAKix5CaUmv92M5HOAB-psdNg%3DawF7BDZ%2ByvA%40mail.gmail.com.
