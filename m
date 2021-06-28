Return-Path: <clang-built-linux+bncBDYJPJO25UGBBYMZ5CDAMGQE46DOQJQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x33c.google.com (mail-wm1-x33c.google.com [IPv6:2a00:1450:4864:20::33c])
	by mail.lfdr.de (Postfix) with ESMTPS id 7751F3B67F9
	for <lists+clang-built-linux@lfdr.de>; Mon, 28 Jun 2021 19:54:42 +0200 (CEST)
Received: by mail-wm1-x33c.google.com with SMTP id y14-20020a1c7d0e0000b02901edd7784928sf88wmc.2
        for <lists+clang-built-linux@lfdr.de>; Mon, 28 Jun 2021 10:54:42 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1624902882; cv=pass;
        d=google.com; s=arc-20160816;
        b=hSwi4qeCMBF+FFNVhXyBQDKVF2I5OxC5NO0ahlqeKprIB+HmvaOwd5nilEePbK7VYL
         sHRiEFVygdVbak3uj2Kp98RgVkThLofRfsZ+aF01KsE2Ya3zVBtq6q2MjmLYuV9RAQN4
         J7PlfDpoBIeK8EbAZrIL5TKcudYSC6UWtlHOasuiJzJogrrn7OgIxa5TJ8ItAwXWUsd9
         2Podmlgw1LDDrQKF7BbFXmRQEX+lKEdlsyhsimje3YIkjSWpEiLpbzV64qFg4wE5EdY5
         byMfTBZBGVqYBovytO/U4N8mbl1kLwGHeWK6ra9pLcHtiaLJCQVvQH5184KJMOd6l+20
         Lmwg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=EWdc3a+VoXCBFwNFQDGnFaUGpSgaep08kEM0RpxjJTo=;
        b=tUdCzR2yMBfBe/P1e+daF5yI8ft0PzEqLCXeMp9J2UkibJyMlTLQgHGlSu9Za9PuvP
         7bXKMngnmH4NnjTWHozfGXwqc3B4/9LySEV/3ej9JS2MBk+JdXffFNqd1CpEcG+/FJkb
         k3wwZh1L8YAUaheZ1z97DW98ipP6xGizC5kMQMdBHdjpvHw3bon2UFQcIUP4aQY6VTJe
         zn9qBWhcH/M94Jafd1TGMlEglP6zEsLDlUX+ipwJjQpO8J4oiw/EVfXiqX13ftcgIwyY
         VpfhPgIPuwe2aWiuHToPhcuHQb39k9RjvKQBeHftRz7pn05PgSfHOxRFpGEnkAVYIXwv
         Pvqw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=LS2y1K53;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::235 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=EWdc3a+VoXCBFwNFQDGnFaUGpSgaep08kEM0RpxjJTo=;
        b=WIxi3p9XfoWLqQMOFT/9FXNvKTVnR90b1lB89igfdT8pX5BYXIMVuSPv6QC7hTn6LO
         DbxednlRPXKr3UGv3DTg6ahFiwKx/jD2FK/ET/Pf5nLojuk2yQ2v5AzQ4IddH/LXtMDi
         nRWBpLOD+FxkgvZMFzDIxWCYLM1wz3pKl/E9OOstgmmVEklJ/XgtuA4HLPR/oSzAxC+l
         CmuzztgE/nRmICJ/XY3P1bs5tf3gUL8toKPDQJHZQSnMxiPc3UvOcH7dWbYrLjP5ypIM
         b72vlrRZOvX++lDPqLpgocEo1RDW2Z278jCI7GLZGhsZPC3Du+V1R6R7xyxrduK6rwV3
         R0HQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=EWdc3a+VoXCBFwNFQDGnFaUGpSgaep08kEM0RpxjJTo=;
        b=pgTjRDt8hqQuM9x/NGRu5gRn2MGfGVe10GmNok/Pyhj+WIiKaGK6dgS0qc8OnjVaEm
         u8horZklGc7NdpAOgCvFnOpv5s4cTOXVrQIuaXgM7cEsOE8y5zPo8MQlahH9Ax9K5lIe
         bvtkqrF9Ip4miH7+0sXfgKpaduUK19d1N4so9JQWcNoBtIWx4Z5HJHsg9nsOhqCYNDBV
         ezmwo5BZ9K3HZyM2DrwtCT+xMIsvf9SIdSO8LFfCil2lionA5w/Vo6Ua8Bps5W7yRN8W
         2O/kaPRntGUJEpZvwNqsaJXl9PXO4ntkLH/7yhw5m28UD5TK33N+6DLV3Kwm44l8eshN
         iB9w==
X-Gm-Message-State: AOAM531s2B3axxrCEzActfnrRvHdSDAlUykn8LEZS+2wKzv8gsaQgJU1
	eE6TzFp0QbW87W9N+kkEoA8=
X-Google-Smtp-Source: ABdhPJzkLUqFdRdEhRvD88K9EXOPj/it7nGZMauf7X09ktc/QSJ89Nbafll0JtrjgBspGnppT9ObFw==
X-Received: by 2002:a1c:4e03:: with SMTP id g3mr28428361wmh.122.1624902882178;
        Mon, 28 Jun 2021 10:54:42 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a7b:c18d:: with SMTP id y13ls8650117wmi.1.gmail; Mon, 28 Jun
 2021 10:54:41 -0700 (PDT)
X-Received: by 2002:a1c:4646:: with SMTP id t67mr27569720wma.70.1624902881293;
        Mon, 28 Jun 2021 10:54:41 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1624902881; cv=none;
        d=google.com; s=arc-20160816;
        b=DDGRrG5z7k5Zxy08n3EbLOG1+920THDCeZsNqRZf+zWfNDn4lX/pGV+NDQaBwhPyr3
         hUUhGVffVlVS5eMoMFszAU5G0lBWvTJuYxKaxbg3ICcJBUcTL6s84SvVLp7k7LO4EYNp
         /vHdIq2YCmsRS0sX2PRY7NNl2UgqXHl51XnAAADRjDm5GJZi97DW3BsyP92H442GfrnJ
         a6lf5oOJs+Y0Z//9h3PbG6VKIMLmX4FFvwaGWeMCOrpYGfoIp/d5kx1/HWrCbGJfXqIs
         hyFYNIobM0bXL89X+ZNE83RsBNwhKr0gN1cgLnpyh3jntH4b9+9+nt43zBMIqKWalnDp
         zr9g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=1JGL45JVnWIjVsGv/XsgCsmYr6pic/ZedIcGZwFZj2c=;
        b=mNkC2hJTzS6pYOs4vtkemVyNI4clNf+twLexYHZQxzb7wAvHYIUaZCT0MNekqkaoMN
         pbjP418RMbfjsvTDlEW+NS/nNrJU81F6mXREKhMHgHXYIEJh58BDniF/cKr30y/xXtl2
         e7qcXReMPmwAvEuKGbIzGMAadxozpU1WSwNXLrvs5hNYsbz6OK8JhuY9vPBg18O8SabT
         UH+9OKlZcK8USyB6i2raXuJZG4/4bjunjBt3yxEsWfRWEynJ7bitNHKNYdDiY6MJlwNf
         ODBktz1E7KTmmPbU7HsOfHz9CGjfdxziSHe1ffUk6543bv4ylUk9/wStezWH1Po6Z+4Y
         VVlQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=LS2y1K53;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::235 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-lj1-x235.google.com (mail-lj1-x235.google.com. [2a00:1450:4864:20::235])
        by gmr-mx.google.com with ESMTPS id m27si438236wms.0.2021.06.28.10.54.41
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 28 Jun 2021 10:54:41 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::235 as permitted sender) client-ip=2a00:1450:4864:20::235;
Received: by mail-lj1-x235.google.com with SMTP id c11so26932143ljd.6
        for <clang-built-linux@googlegroups.com>; Mon, 28 Jun 2021 10:54:41 -0700 (PDT)
X-Received: by 2002:a2e:b5b5:: with SMTP id f21mr440155ljn.479.1624902880473;
 Mon, 28 Jun 2021 10:54:40 -0700 (PDT)
MIME-Version: 1.0
References: <20210622183858.2962637-1-ndesaulniers@google.com> <20210622201822.ayavok3d2fw3u2pl@google.com>
In-Reply-To: <20210622201822.ayavok3d2fw3u2pl@google.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 28 Jun 2021 10:54:24 -0700
Message-ID: <CAKwvOdki=HZh4TYwqwDSo4BWtbGHp6pM_2akA+D3K8JO+dMGoQ@mail.gmail.com>
Subject: Re: [PATCH] kallsyms: strip LTO suffixes from static functions
To: Fangrui Song <maskray@google.com>
Cc: Kees Cook <keescook@chromium.org>, "KE . LI" <like1@oppo.com>, 
	Nathan Chancellor <nathan@kernel.org>, Andrew Morton <akpm@linux-foundation.org>, 
	Stephen Rothwell <sfr@canb.auug.org.au>, Miroslav Benes <mbenes@suse.cz>, 
	"Gustavo A. R. Silva" <gustavoars@kernel.org>, Stephen Boyd <swboyd@chromium.org>, 
	Sami Tolvanen <samitolvanen@google.com>, Joe Perches <joe@perches.com>, linux-kernel@vger.kernel.org, 
	clang-built-linux@googlegroups.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=LS2y1K53;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::235
 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
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

On Tue, Jun 22, 2021 at 1:18 PM Fangrui Song <maskray@google.com> wrote:
>
> On 2021-06-22, 'Nick Desaulniers' via Clang Built Linux wrote:
> >Similar to:
> >commit 8b8e6b5d3b01 ("kallsyms: strip ThinLTO hashes from static
> >functions")
> >
> >It's very common for compilers to modify the symbol name for static
> >functions as part of optimizing transformations. That makes hooking
> >static functions (that weren't inlined or DCE'd) with kprobes difficult.
> >
> >Full LTO uses a different mangling scheme than thin LTO; full LTO
> >imports all code into effectively one big translation unit. It must
> >rename static functions to prevent collisions. Strip off these suffixes
> >so that we can continue to hook such static functions.
>
> See below. The message needs a change.
>
> I can comment on the LTO side thing, but a maintainer needs to check
> about the kernel side logic.
>
> Reviewed-by: Fangrui Song <maskray@google.com>
>
> >Reported-by: KE.LI(Lieke) <like1@oppo.com>
> >Tested-by: KE.LI(Lieke) <like1@oppo.com>
> >Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
> >---
> > kernel/kallsyms.c | 18 ++++++++++++++++++
> > 1 file changed, 18 insertions(+)
> >
> >diff --git a/kernel/kallsyms.c b/kernel/kallsyms.c
> >index 4067564ec59f..14cf3a6474de 100644
> >--- a/kernel/kallsyms.c
> >+++ b/kernel/kallsyms.c
> >@@ -188,6 +188,24 @@ static inline bool cleanup_symbol_name(char *s)
> >
> >       return res != NULL;
> > }
> >+#elif defined(CONFIG_LTO_CLANG_FULL)
> >+/*
> >+ * LLVM mangles static functions for full LTO so that two static functions with
> >+ * the same identifier do not collide when all code is combined into one
> >+ * module. The scheme used converts references to foo into
> >+ * foo.llvm.974640843467629774, for example. This can break hooking of static
> >+ * functions with kprobes.
> >+ */
>
> The comment should say ThinLTO instead.
>
> The .llvm.123 suffix is for global scope promotion for local linkage
> symbols. The scheme is ThinLTO specific. This ensures that a local

Oh, boy. Indeed.  I had identified the mangling coming from
getGlobalNameForLocal(), but looking at the call chain now I see:

FunctionImportGlobalProcessing::processGlobalForThinLTO()
-> FunctionImportGlobalProcessing::getPromotedName()
  -> ModuleSummaryIndex::getGlobalNameForLocal()

I'm not sure then how I figured it was specific to full LTO.

Android recently switched from thin LTO to full LTO, which is what I
assumed was the cause of the bug report. Rereading our internal bug
report, it was tested against a prior version that did the symbol
truncation for thinLTO. I then assumed this was full LTO specific for
whatever reason, and modified the patch to only apply to full LTO.  I
see via the above call chain that this patch is not correct.  Let me
send my original patch as a v2. b/189560201 if you're interested.

> linkage symbol, when imported into multiple translation units, then
> compiled into different object files, during linking, the copies can be
> deduplicated. This matters for code size and for correctness when the
> function address is taken.
>
> Regular LTO (sometimes called full LTO) uses the regular name.\d+
> scheme.
>
> >+static inline bool cleanup_symbol_name(char *s)
> >+{
> >+      char *res;
> >+
> >+      res = strstr(s, ".llvm.");
> >+      if (res)
> >+              *res = '\0';
> >+
> >+      return res != NULL;
> >+}
> > #else
> > static inline bool cleanup_symbol_name(char *s) { return false; }
> > #endif
> >--
> >2.32.0.288.g62a8d224e6-goog
>
> I wonder whether it makes sense to strip all `.something` suffixes.
> For example, the recent -funique-internal-linkage-name (which can
> improve sample profile accuracy) uses the `.__uniq.1234` scheme.
>
> Function specialization/clones can create arbitrary `.123` suffixes.

I definitely don't see hooking static functions via kprobes as being
scalable. There are numerous different mangling schemes different
compilers apply to different static functions.

--
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdki%3DHZh4TYwqwDSo4BWtbGHp6pM_2akA%2BD3K8JO%2BdMGoQ%40mail.gmail.com.
