Return-Path: <clang-built-linux+bncBC2ORX645YPRBFHE3T4QKGQEFIKQR6Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x43c.google.com (mail-wr1-x43c.google.com [IPv6:2a00:1450:4864:20::43c])
	by mail.lfdr.de (Postfix) with ESMTPS id F1BE424504E
	for <lists+clang-built-linux@lfdr.de>; Sat, 15 Aug 2020 02:53:40 +0200 (CEST)
Received: by mail-wr1-x43c.google.com with SMTP id 5sf3905776wrc.17
        for <lists+clang-built-linux@lfdr.de>; Fri, 14 Aug 2020 17:53:40 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1597452820; cv=pass;
        d=google.com; s=arc-20160816;
        b=VqX1/UmuokjVi4CPpov3+dTTwxz+OvVgWKtgO84Z8Ugmrmwty7w2B/Vy2eXcYVJsxy
         eQwGRxhPHew7My4YoblWkrnSu0cVlfz4f+ZOmQDps8OavzpUoIgPVt3CuPb5X1PCj5fz
         /CuMDtEH8ZymSZ3tT+A2hTwg/uxyR0MMvglkKeUDMZqqosu4XU37B5kKDDMkGj7yVNJF
         XeIeKCgVgNQ/wtqUohTEJZ3+9uigNxAMwrvK7Hd4kPu8STu86HXv8t+OpvdwQxRBDYkj
         tI3csyTtVCrDII/ftybVBa8rGff4eqXrjuS0ctgcEY7ocw5FlkGMc4RqP5xXy33yWfP9
         ED6g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=N8B1pnu0S38Cq6NltM4Ty+IMpoH/7cxvlSQRv70dtS4=;
        b=ZoIzEwhDoPyXsjT+sD34AzZx8tLWcnTvwUKYVIof8yC9ki6Yln0h3ydRBtZib8GnyF
         ucFt73Wvj7Y+lfxxQuIfTyaepCy9lReGYf81BDCePmokKLyiejTOoft8PT1aVXWNlMZR
         g6lWo+xFhPGWuJKcNyuJKTLDIBJpFkqRyWuON8fEFOiTWQy6eXLnh4Yom1QspNdkjbas
         YY8jKV4ZqxtiABXtJWuzQw0im9EHc1K+gpTthZWPzAcoofnH2+voYhIAtT6DsXtFbHgn
         o5vOQiqsFBVmroIVyD6UUC+zv3OSjEwtZqbVmLAEl3HrInFOfjBfvXxBnozffoXnpran
         sg1w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=opWbEJLA;
       spf=pass (google.com: domain of samitolvanen@google.com designates 2a00:1450:4864:20::642 as permitted sender) smtp.mailfrom=samitolvanen@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=N8B1pnu0S38Cq6NltM4Ty+IMpoH/7cxvlSQRv70dtS4=;
        b=iQ9J54Coe9KvwrMGAiw1YWM0l0cOfxYAMM0Rgg7GU0Xi4zEhIM+oy2jHWuaxTEAwVM
         dyCbrgMR0q+cOFzexza4gxINAQ4/uv1X9vHrxCRPNfQCRonJL17unDjQy18BOXGMsE7x
         9FofMyOE3BZqPPJbNqKNKMlaSziF1mi2EcJGytpjHAff5WNZPsiz603Hz7uLn98x5ofd
         NNU7EeXAaGv8Aq5bKIy24tb7yP+LPkn5x4sbM7yhY2VeZXvmtR27qkMn+YXTQUV7G0ZD
         yIL9RiqpDVNgtiZin5S+Gk3le0jlAOnfWQ7w5bqh2xWWCUum6H8jbnGEK+xB8bggZ9hk
         3pQw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=N8B1pnu0S38Cq6NltM4Ty+IMpoH/7cxvlSQRv70dtS4=;
        b=gFW142zZZl3EB/a84P+xBKPdiFBKFrlKgbc88EIBlbH4NMKZN3usEmbmzETITjZL+H
         pq66ekXPUqGQIcTOZqDM30MsUOKqXc3pCcBQvy4RELwFc/OG463hZnTM3HvKKTbCzVYk
         g9HCDHXkXoQUKvUpF9aEDbJdzGtMYlGm0govObFtvGEE9156hf6qO16wvgkLfH51jwgT
         gYYwUGAKF7gVkivS0M4gE6U1GBtqY41e5HAI326oAWnUivpwn6zLhoqBpDLGQYT1DZBg
         umhpkeAe4TKXW+P4ZPEIzbjN1wEHS9Phm9lbSeJf2Ig+2w6VN2EQRgnwoAdLukKdA7NC
         it8A==
X-Gm-Message-State: AOAM53277qQYy2QvXJMmW7VrR/NRIw/cJHBJ6YpG4ubXr3vj8d/TS59v
	3fina02T5EoYRdt5dyM7JEM=
X-Google-Smtp-Source: ABdhPJz1qKzpRSN+NTEdKNwE2ahJOUenjO4KDjlCMvKHf5Fks1Jv1jus11wPyakiF4O6ghDg7h1s1Q==
X-Received: by 2002:a1c:c906:: with SMTP id f6mr4893915wmb.5.1597452820709;
        Fri, 14 Aug 2020 17:53:40 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:adf:81f4:: with SMTP id 107ls464074wra.2.gmail; Fri, 14 Aug
 2020 17:53:40 -0700 (PDT)
X-Received: by 2002:adf:fb87:: with SMTP id a7mr5085549wrr.390.1597452819939;
        Fri, 14 Aug 2020 17:53:39 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1597452819; cv=none;
        d=google.com; s=arc-20160816;
        b=ksuM0RLVakE9Kif1aULaaYzZNurl1X51bKz8iVJ0Jo3I6RRnSZ/qxjtLSsb2q5oI3O
         wCcAgswxywNo7UBNWARizvMzq+UoNJW9Rw83obJ3ji8Z9P64TqY8nUSQDXDJQI987PkZ
         u83c9wCxMXHLIa/WjUEqoXVsYWds021gkoKg/kI6dXZEYMG6CVoQQcZGU0mX4BkUzA78
         LD2A8QUsiE/ecxLrAA4qKlsrQC4ztTiHE/8kagXWjtnGxIqNIr7WWPHu7mDPi28jQuSs
         doKr6UnQMvOnWSAOFk/1YQOi6bVDF4etzqRjbIYsLg291ZSbalcAxRubtyNXXprjmFe7
         Mhhw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=cE/B8jLj1zvXZ+mvl87f60vua1FqTOB1sidvPP/WOgw=;
        b=L5+hLbMQRPmINhnrpZ0ch4xzRwQ7qiEq3PfM3rSEPWWgIQlDmY+FRaa1lryk4pO6HF
         sS1dVWRXJwH70Evv7efm81pM4ieUAkB1rtoI26FhvaJAlzgnDiX63iE7qejab+WvhJT+
         ux/3tLfgCz79OU0I76SsTr68P1myXoO6EStT3n7rWpwZFi7IuHKRxu26l9SMBHmi8y2v
         PFAKfQ7FF+kSDw42rfmFUEMIJGPnHBcTMTmeLTX4AArKk+FZlmGJf+6QbJA8gzV1Q8NZ
         ZJJ/8uyeQ/i5Qz8MY/vF/IbcGjQyYJ+2cKU8Shpp+Ye/K8Qa79qFrY0Jr+rOOfAZ3tPv
         aB7A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=opWbEJLA;
       spf=pass (google.com: domain of samitolvanen@google.com designates 2a00:1450:4864:20::642 as permitted sender) smtp.mailfrom=samitolvanen@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-ej1-x642.google.com (mail-ej1-x642.google.com. [2a00:1450:4864:20::642])
        by gmr-mx.google.com with ESMTPS id j83si963619wmj.0.2020.08.14.17.53.39
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 14 Aug 2020 17:53:39 -0700 (PDT)
Received-SPF: pass (google.com: domain of samitolvanen@google.com designates 2a00:1450:4864:20::642 as permitted sender) client-ip=2a00:1450:4864:20::642;
Received: by mail-ej1-x642.google.com with SMTP id a26so11743575ejc.2
        for <clang-built-linux@googlegroups.com>; Fri, 14 Aug 2020 17:53:39 -0700 (PDT)
X-Received: by 2002:a17:906:2356:: with SMTP id m22mr4835600eja.124.1597452819358;
 Fri, 14 Aug 2020 17:53:39 -0700 (PDT)
MIME-Version: 1.0
References: <20200815002417.1512973-1-ndesaulniers@google.com>
In-Reply-To: <20200815002417.1512973-1-ndesaulniers@google.com>
From: "'Sami Tolvanen' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Fri, 14 Aug 2020 17:53:28 -0700
Message-ID: <CABCJKue4ikLs9NuxkhwxZUMZzgD10mVXnwt4=_8euXer8gzOQQ@mail.gmail.com>
Subject: Re: [PATCH] lib/string.c: implement stpcpy
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Andrew Morton <akpm@linux-foundation.org>, 
	=?UTF-8?B?RMOhdmlkIEJvbHZhbnNrw70=?= <david.bolvansky@gmail.com>, 
	Eli Friedman <efriedma@quicinc.com>, stable@vger.kernel.org, 
	Joe Perches <joe@perches.com>, Tony Luck <tony.luck@intel.com>, Yury Norov <yury.norov@gmail.com>, 
	Daniel Axtens <dja@axtens.net>, Arvind Sankar <nivedita@alum.mit.edu>, 
	Dan Williams <dan.j.williams@intel.com>, 
	"Joel Fernandes (Google)" <joel@joelfernandes.org>, 
	Andy Shevchenko <andriy.shevchenko@linux.intel.com>, Kees Cook <keescook@chromium.org>, 
	Alexandru Ardelean <alexandru.ardelean@analog.com>, LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: samitolvanen@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=opWbEJLA;       spf=pass
 (google.com: domain of samitolvanen@google.com designates 2a00:1450:4864:20::642
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

Hi Nick,

On Fri, Aug 14, 2020 at 5:24 PM Nick Desaulniers
<ndesaulniers@google.com> wrote:
>
> LLVM implemented a recent "libcall optimization" that lowers calls to
> `sprintf(dest, "%s", str)` where the return value is used to
> `stpcpy(dest, str) - dest`. This generally avoids the machinery involved
> in parsing format strings.
>
> `stpcpy` is just like `strcpy` except:
> 1. it returns the pointer to the new tail of `dest`. This allows you to
>    chain multiple calls to `stpcpy` in one statement.
> 2. it requires the parameters not to overlap.  Calling `sprintf` with
>    overlapping arguments was clarified in ISO C99 and POSIX.1-2001 to be
>    undefined behavior.
>
> `stpcpy` was first standardized in POSIX.1-2008.
>
> Implement this so that we don't observe linkage failures due to missing
> symbol definitions for `stpcpy`.
>
> Similar to last year's fire drill with:
> commit 5f074f3e192f ("lib/string.c: implement a basic bcmp")
>
> This optimization was introduced into clang-12.
>
> Cc: stable@vger.kernel.org
> Link: https://bugs.llvm.org/show_bug.cgi?id=47162
> Link: https://github.com/ClangBuiltLinux/linux/issues/1126
> Link: https://man7.org/linux/man-pages/man3/stpcpy.3.html
> Link: https://pubs.opengroup.org/onlinepubs/9699919799/functions/stpcpy.html
> Link: https://reviews.llvm.org/D85963
> Reported-by: Sami Tolvanen <samitolvanen@google.com>
> Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
> ---
>  include/linux/string.h |  3 +++
>  lib/string.c           | 23 +++++++++++++++++++++++
>  2 files changed, 26 insertions(+)

Thank you for the patch! I can confirm that this fixes the build for
me with ToT Clang.

Tested-by: Sami Tolvanen <samitolvanen@google.com>

Sami

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CABCJKue4ikLs9NuxkhwxZUMZzgD10mVXnwt4%3D_8euXer8gzOQQ%40mail.gmail.com.
