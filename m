Return-Path: <clang-built-linux+bncBDYJPJO25UGBB57HXP6QKGQEVNSH7WY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc3f.google.com (mail-oo1-xc3f.google.com [IPv6:2607:f8b0:4864:20::c3f])
	by mail.lfdr.de (Postfix) with ESMTPS id E8D642B2622
	for <lists+clang-built-linux@lfdr.de>; Fri, 13 Nov 2020 22:00:41 +0100 (CET)
Received: by mail-oo1-xc3f.google.com with SMTP id c2sf4635980ooo.20
        for <lists+clang-built-linux@lfdr.de>; Fri, 13 Nov 2020 13:00:41 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1605301239; cv=pass;
        d=google.com; s=arc-20160816;
        b=trItbzJ2bRKk/dLYesQn08PPMnJQxlNvtOszN+mCczsDR/lkc1EISnmmOOjL7p5Q7o
         Y3+Ux78A2JZywwl4B/8za+k6U2UEVZII0Nxz+y6ZmLOyIroa8EcecCjaAhy+ob6ak1+D
         bQENEY/6bBeIesO8dBuPu1A6ooJwNX/duGx+BY392Ob1e+dP13YS/mU+fAqRrXyelZIF
         1r/yTnAJgY1L1l+cYbQG7WBUPgx8Jh3kncPprAVBfhcFM/xCV2V8Cl9gj9EavgEr224C
         sGjFLsplrnI3HC6Dgb6zfe31Rh6gewRNKdmP2L+FEVFWA2SVdnDd3MC4cR/y2gZj07BG
         7r1w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=LB8Jmt3nB9vuA4pn7QZNUYLp8u2pmtd2we4Vjg1wx5E=;
        b=W5G3NS9LzQXwom55/iFzfVquc1216x/98o5VQOY7KyVAEI/+qQChp3YfL6Xa2smr+o
         xQ6txYwC/bIHZCl0TnzeUpNOs5NtQBWFFDxmvwnm27x0achcnVM3d7UXefnMBPMrWAUA
         LNFjbwlWFA2r7esYGb1gH5cBSDZyuOciG3FZqkmqZHv58c5UiCaICseMvHg7zd4sYpE5
         QTovqNyvm2CQ4B3gXBnSGWrvDwRbWv/rCEvECvteJ5fIEpOVhuIhFZ2+AhnEkYwpuVhw
         yrEMe+h6P99cAjfsBJDssq31Cp+Caye75ajt+SAzpTZ/R9jz/NG+RGl0WrNeztDJaD5T
         M41Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=usPrvtFP;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::642 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=LB8Jmt3nB9vuA4pn7QZNUYLp8u2pmtd2we4Vjg1wx5E=;
        b=TE0m8O2vkVCboo0tOvWMaeeupOn3D87qGSLNfyeIDXD5eg9qQGSikkDsjtVjUWUVEZ
         72cwM/LpK7G2VLy1HAeaf1c8zERd4epUy0RypI28iTZmshLONVUX4KqDB8zqUjO7D1Ga
         fS2vfl4YtPDpP652wpPO06MXkvGD57onlHzItAzzrgVSrN5n0VqOimX5x7ADYLpDj8V+
         8HkYdXWnOGVMWI7n292E/0zxs/RfXVHg3AzPwXuTVFGK64ai4i+v4wNXFaSuHS2pyQsx
         nWuNNfjBhThtRerxFTtzTuEh/vI24RoWvJkihkPfhz0col0NpLszYv2NRIgwlSgf8yyV
         ecqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=LB8Jmt3nB9vuA4pn7QZNUYLp8u2pmtd2we4Vjg1wx5E=;
        b=R7ej/CyEer8rj7Gz6DZ4fGKvO1mtHf/O3vJl7Q1BJO7Kw16OdGfUkRZl1CB8X/0MQz
         hOM0O0mx/pMTQ+BcoXLcVsFW+Kp+U26TTPN0hni/OJqEvRv/zvyYL7sIGESROVDju6Qd
         59p+2azb3OB5ezajduxQcvLW4AJkB8Qa+R5ICVtoguXESaLKLAULAUalTP3qD+57CimS
         xBBoIw8pjcYCjngMbj7lyi8HUzJ+7fDrNeEfKUs/USp/vA843E/ADLmUJau4aRZ3laYK
         M1+tfylTD4BliXH6ZFuwW/xq6lcEWo8zwCInkH3qQUHMHLNVl3ctaWenRurEDSTJoNDH
         sBmQ==
X-Gm-Message-State: AOAM533ZyoNMG9Bc7aSKU8jQhOph+1c2NkWZY2XwiyO2a7h72v8IXGgv
	yuUn90xRrdBgKSs8AiCXbLU=
X-Google-Smtp-Source: ABdhPJzMzt9NyWieBq1D2rrwBsPtrdFHGkrdXBlNKnaMeLZy5ax5YeAjTP4wE8tMDNvbIGMaqITcdg==
X-Received: by 2002:a05:6808:284:: with SMTP id z4mr2725813oic.116.1605301239483;
        Fri, 13 Nov 2020 13:00:39 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:416:: with SMTP id 22ls1789871oie.7.gmail; Fri, 13 Nov
 2020 13:00:39 -0800 (PST)
X-Received: by 2002:aca:c188:: with SMTP id r130mr2972527oif.99.1605301239192;
        Fri, 13 Nov 2020 13:00:39 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1605301239; cv=none;
        d=google.com; s=arc-20160816;
        b=U6HTm7KIIX1tYHoXJscDUL3fI4D061d5mRcXuLwI/6NJUIhWgExfNuRopG8qhDNzbh
         DWYQYR9ByuGJf7Dw7dY60BMzet3YUFgoIekj2hwyVYbcydxoID4zrSKnhXgXJNNsamLm
         psx212yz/xi2NpM36DVUc351TlSchCkpf8KwRZtfGz7mfVGUc1NqTwSjrahYtiV4OHkv
         BfPZ+wJUP+Uc0IG5GHdX4BTUSxhyzM9KlT1PI7/3HyRqghuTdFd6JWf5JLGmkIRgg4mS
         QkZQeZ9tww2N2v5e3mjpcxQ0maBTNYikOnsxAmXnCHuNEk1XCROKxOsIU1/eXKxD4paq
         DYCg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=gmGncwYFUvMs6I+eFXEBgHlp3fnbadm1lmVPKMGl9W8=;
        b=0USWYaGfHUqo9wQTCXKOPd1ts+eMcHJ1vo2QZ5j2uP8LqYdX77CVLcyBa6hvn3XSml
         JpXPmm925ORkyUY/MHfcb3f8WcLOrz/GYyqgx04p84lN+KKmQdLw6mKfnq9iOGittN/9
         gyLYb8/9zuQgYk2q4oFFaXUJFmlx1kb/Nz7RRn86RQ5yXUCXqGD7I7SZ4qRQxmwi9l+X
         GXuUG0SmBI2HkFhYAeRLmRrG5deYXCGKZ56DVgaaECts+yMoEi8pCVRgKF/OnHzKAXiU
         1VBio8kZgtY38apIJQwMbZ7hfm/T6m82W9z8la1wx1MFScDux1edJz7iY3EQ7lAWFF9/
         +v/g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=usPrvtFP;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::642 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pl1-x642.google.com (mail-pl1-x642.google.com. [2607:f8b0:4864:20::642])
        by gmr-mx.google.com with ESMTPS id e22si875372oti.2.2020.11.13.13.00.39
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 13 Nov 2020 13:00:39 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::642 as permitted sender) client-ip=2607:f8b0:4864:20::642;
Received: by mail-pl1-x642.google.com with SMTP id g11so5108236pll.13
        for <clang-built-linux@googlegroups.com>; Fri, 13 Nov 2020 13:00:39 -0800 (PST)
X-Received: by 2002:a17:902:ee85:b029:d6:c43e:2321 with SMTP id
 a5-20020a170902ee85b02900d6c43e2321mr3313392pld.29.1605301237814; Fri, 13 Nov
 2020 13:00:37 -0800 (PST)
MIME-Version: 1.0
References: <20201111021131.822867-1-ndesaulniers@google.com>
 <BYAPR11MB3256E0C1DCB4F01D18DF709F87E80@BYAPR11MB3256.namprd11.prod.outlook.com>
 <CAKwvOdk2U5+DcXYyMoBAhyaa67EukhB6QMEUbRPcOF7P3Sz21w@mail.gmail.com>
 <BYAPR11MB3256C9711620932685C368F887E70@BYAPR11MB3256.namprd11.prod.outlook.com>
 <CAKwvOdnu07S8ZtGVe0eVFP=6hLSRa58EtDYOJUK_zGWFaqUboA@mail.gmail.com>
 <BYAPR11MB3256BEF30840D4AB440A359C87E70@BYAPR11MB3256.namprd11.prod.outlook.com>
 <CAKwvOdnYpmf=ydFVWSqVkWeUpn+M2v9PfdQd71T3oqQ9_1WQaQ@mail.gmail.com> <CANiq72k13K_zA5aH5hameoe4TSf2o5cA294bA4UEZG0M6S3DXQ@mail.gmail.com>
In-Reply-To: <CANiq72k13K_zA5aH5hameoe4TSf2o5cA294bA4UEZG0M6S3DXQ@mail.gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Fri, 13 Nov 2020 13:00:26 -0800
Message-ID: <CAKwvOdn9-B=CGa5t1diymfU8Cqpa3o2zDfmmi=PYvTeAmC8Bxw@mail.gmail.com>
Subject: Re: [PATCH] ACPICA: fix -Wfallthrough
To: Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>, 
	"Moore, Robert" <robert.moore@intel.com>
Cc: "Kaneda, Erik" <erik.kaneda@intel.com>, "Wysocki, Rafael J" <rafael.j.wysocki@intel.com>, 
	"Gustavo A . R . Silva" <gustavoars@kernel.org>, 
	"clang-built-linux@googlegroups.com" <clang-built-linux@googlegroups.com>, Len Brown <lenb@kernel.org>, 
	"linux-acpi@vger.kernel.org" <linux-acpi@vger.kernel.org>, "devel@acpica.org" <devel@acpica.org>, 
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=usPrvtFP;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::642
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

On Fri, Nov 13, 2020 at 12:14 AM Miguel Ojeda
<miguel.ojeda.sandonis@gmail.com> wrote:
>
> On Fri, Nov 13, 2020 at 1:09 AM Nick Desaulniers
> <ndesaulniers@google.com> wrote:
> >
> > Thank you for the explicit diagnostics observed.  Something fishy is
> > going on though, https://godbolt.org/z/Gbxbxa is how I expect MSVC to
> > handle include/linux/compiler_attributes.h.
> >
> > The C preprocessor should make it such that MSVC never sees
> > `__attribute__` or `__fallthrough__`; that it does begs the question.
> > That would seem to imply that `#if __has_attribute(__fallthrough__)`
> > somehow evaluates to true on MSVC, but my godbolt link shows it does
> > not.
> >
> > Could the upstream ACPICA project be #define'ing something that could
> > be altering this? (Or not #define'ing something?)
> >
> > Worst case, we could do as Joe Perches suggested and disable
> > -Wfallthrough for drivers/acpi/acpica/.
>
> I agree, something is fishy. MSVC has several flags for conformance
> and extensions support, including two full C preprocessors in newer
> versions; which means we might be missing something, but I don't see
> how the code in compiler_attributes.h could be confusing MSVC even in
> older non-conforming versions.

unless
```
# define fallthrough                    __attribute__((__fallthrough__))
```
was copy and pasted into the code, rather than #including the whole header?

-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdn9-B%3DCGa5t1diymfU8Cqpa3o2zDfmmi%3DPYvTeAmC8Bxw%40mail.gmail.com.
