Return-Path: <clang-built-linux+bncBDYJPJO25UGBBFOIZT4QKGQE3PDLJHI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc3e.google.com (mail-oo1-xc3e.google.com [IPv6:2607:f8b0:4864:20::c3e])
	by mail.lfdr.de (Postfix) with ESMTPS id 1CA7C2422B7
	for <lists+clang-built-linux@lfdr.de>; Wed, 12 Aug 2020 01:04:55 +0200 (CEST)
Received: by mail-oo1-xc3e.google.com with SMTP id f13sf225026oop.0
        for <lists+clang-built-linux@lfdr.de>; Tue, 11 Aug 2020 16:04:55 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1597187093; cv=pass;
        d=google.com; s=arc-20160816;
        b=MV7pJ4E22j6cK2HpsbD5kVvItCBfJo2GdAD181eD0VC+V76+aOltJQOtnb0/CsPEPi
         GjUEJLJRYBAr8M++BVUWYMqu26bgpO3egqfOcZR1WNXiJGNKKHdu+7UBp0dyNoHIS/ws
         q8hpCecIhSP4W8BYQIYvZjfy4dZLT3+nX8ceG7WOSc9mmmTPXAPPWCsX6zBPOyPQIgGX
         LGfOX0xsm4hv+wxV5I6ercyGTyrFRnwWqVW3ZdhHIBwwVgMLskdNwec8RGAyQuvJ3pBh
         cK2UsymGjFDCtc73du6ifxUrl4wd/nJo/PKVdWEsST448nedk1s3y6skaWmU/LL0/QlV
         9Kwg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=OkcTl/PtOZybSC6lucY01Qdkpaf/VqZVZKciKFZwbX4=;
        b=T92rd4yhNs7TVD2vyXRNGHVdsvqkYbByPmkaPisZqVMEhAp4FsiAjpymXDFjh26LrD
         Ti87TMu0nA2nNX1H5PyselTMTUAW2rTobApv0rY7MvEFI2E/SBRMDyW7xHpHJ4/FIhQO
         Wt+Vij8GudlB359Nj87BJhAow6vOEtgO6XGPN25xWjjyRg7zXHaYHV8wMJfAw3aomVLh
         02BBnGGFJ7xBwL3SuVdigO7dehdJu4SQVm5jLE+YIGa6z8z6Ye2mdoiIptuS2/0yYSBc
         NRyezPCfEWovDm00X4wH0EqzOsbbn3p3iASClWgq9A1N2GWXZIgyfr+bHGhGm4IYI6SP
         /Iog==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=rLTy+RRO;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::442 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=OkcTl/PtOZybSC6lucY01Qdkpaf/VqZVZKciKFZwbX4=;
        b=nlI5tAN+lcwEJocAweT0CprIWxSjJ3p15GvKA4lHMN+raNS9SBll6UG92Mm58dyYUJ
         Y2yYbXu9W4EMGCo427dBfT1ytVhEKUTOv2696ADu6oupOcpiQGBZz5hR/KTJ2medpFwV
         rnxdKLQDoTXqIE9PZ325FKF9YGgoVKgO+HDkecRIf3EB9TWNgh0MrsmBbi3tcjow+BXx
         tX05Awhp6Lx8cUXgTSQXIC/WVELBZDZTRQObV2gE6mbj2AlB/6LQqcE7wPzPblsrhgBl
         GVqDD0cBJW3NpMxPoSzQc/RGa1gcH7F8EqNfCMj25K9y33MrT9ZiG78X6iRkohlD3Uev
         ILBQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=OkcTl/PtOZybSC6lucY01Qdkpaf/VqZVZKciKFZwbX4=;
        b=TrqSJJ+KKd/iMgEPc0eDQjDo0ATjQipOEMnSgRFcUpbT3sswdE5b8ATzy68dtb75du
         9/K1hg7xwBq/0sCcuhRQUHcxYoeI+Zt1v5GUBeoBHhMjw7R+foNreO5juYmXpV+o26Dd
         38JLtEvY9UlGlAIdG+OoTbedV1IlyFHvYJyCyIumqDlwtoR+KpCDeVyYgDgvqc0ztx+D
         NyllWp3MOH7Gf4t93pL+j9oX0nAHWmOHrxq+io/vb/RUx/Arsz0Z/OxpvSInsO9CdnRK
         BGR2mg22bWXDNX+PVruxlbXASIWp5oAs0egGc1pocQkRQKbapOTiOx+E6JLj9iqqPrlE
         /1Tw==
X-Gm-Message-State: AOAM5321xH3xefA2/pE/6k93mVFP2PZQm3tzCgjt80p7feKU8WWc+Woa
	DQEJ+b4BMJ+uyVcKdloqIlg=
X-Google-Smtp-Source: ABdhPJzqka4v4gftj++T4ZR+QW4+nuTXZlcWgsvt810JanMHLsXJbyn6ky8kiB1d8DzZF9dBFZIACg==
X-Received: by 2002:aca:120b:: with SMTP id 11mr5428436ois.54.1597187093678;
        Tue, 11 Aug 2020 16:04:53 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:6a13:: with SMTP id g19ls50175otn.6.gmail; Tue, 11 Aug
 2020 16:04:53 -0700 (PDT)
X-Received: by 2002:a05:6830:1e71:: with SMTP id m17mr7387476otr.188.1597187093332;
        Tue, 11 Aug 2020 16:04:53 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1597187093; cv=none;
        d=google.com; s=arc-20160816;
        b=VKxlMfoEWqiKmvdnvKjcq5pq4h/7EZtL3opK84vPWBDJUzYN4ftN9sJA7KWJPhtjfC
         WmBKlJ3XbJDHDcb9b06OdhfZeIymj9YOKIcbup02x4EfdDi+kLMXfhSoqiIbbGR+46MM
         QS9V2AKjvdwgfHiQmFuB8J3wbxcTGEyXkyVAdBdPy7yKH1IVACfRqGZ8x5ALAvgyuO30
         OVeSWV7knCnDVyPMosIIpMj4NDF1Q6OSRJbXEg1u2vxsw7pb9lGUT1+EP7lzwtIqZlxp
         Tj8llhtb9Q4atqFqSLjSmBKimXMjXN0wWvl8LVywkQsl5CMEYWS0ib+31ePRa+QI+N90
         JkTw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=/jIVnC/ThBVmdAOVNCKzkgYvpkZs/3SaWOETF+/bDBw=;
        b=PmULh0CAU4w2jODDHGtL6F44Oyl0pxpW3BcUAXdBUmQxhr5DqB9DkmK5xrIjn9msg/
         TGrIkWCyVZSrgU0YZCB4ZovSaNpQMdt1I5N3zsaUlfJyBN8EdGY0SGvvF2fUCOVcueKr
         SRlG3s8q/QnPk8y0OiORG58AR7sxQmBqYYqlNdyJ0KOB/7uPh/J/QFLrKdMg5TTGY6h0
         kBa2brxFh0DsTtFrwTYcSC+XpjpQiblgT7c/dVKanGb+Bos0vXaTHkBpTt9RDfRc5gbH
         vUW6fNU84rAloWDJQQu7SdruaF9w1wQEAuNlY2dtBcHB6xmWggjUl86zAWup64gLXB+z
         /ojQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=rLTy+RRO;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::442 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x442.google.com (mail-pf1-x442.google.com. [2607:f8b0:4864:20::442])
        by gmr-mx.google.com with ESMTPS id p10si23276ota.3.2020.08.11.16.04.53
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 11 Aug 2020 16:04:53 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::442 as permitted sender) client-ip=2607:f8b0:4864:20::442;
Received: by mail-pf1-x442.google.com with SMTP id x25so39018pff.4
        for <clang-built-linux@googlegroups.com>; Tue, 11 Aug 2020 16:04:53 -0700 (PDT)
X-Received: by 2002:a62:8081:: with SMTP id j123mr8666722pfd.80.1597187092283;
 Tue, 11 Aug 2020 16:04:52 -0700 (PDT)
MIME-Version: 1.0
References: <CAKwvOd=ypa8xE-kaDa7XtzPsBH8=Xu_pZj2rnWaeawNs=3dDkw@mail.gmail.com>
 <20200811173655.1162093-1-nivedita@alum.mit.edu> <CAKwvOdnjLfQ0fWsrFYDJ2O+qFAfEFnTEEnW-aHrPha8G3_WTrg@mail.gmail.com>
 <20200811224436.GA1302731@rani.riverdale.lan>
In-Reply-To: <20200811224436.GA1302731@rani.riverdale.lan>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Tue, 11 Aug 2020 16:04:40 -0700
Message-ID: <CAKwvOdnvyVapAJBchivu8SxoQriKEu1bAimm8688EH=uq5YMqA@mail.gmail.com>
Subject: Re: [PATCH] x86/boot/compressed: Disable relocation relaxation for
 non-pie link
To: Arvind Sankar <nivedita@alum.mit.edu>, Thomas Gleixner <tglx@linutronix.de>, 
	Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>
Cc: Fangrui Song <maskray@google.com>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, e5ten.arch@gmail.com, 
	"maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <x86@kernel.org>, "H. Peter Anvin" <hpa@zytor.com>, Masahiro Yamada <masahiroy@kernel.org>, 
	Ard Biesheuvel <ardb@kernel.org>, Kees Cook <keescook@chromium.org>, 
	LKML <linux-kernel@vger.kernel.org>, "# 3.4.x" <stable@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=rLTy+RRO;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::442
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

On Tue, Aug 11, 2020 at 3:44 PM Arvind Sankar <nivedita@alum.mit.edu> wrote:
>
> On Tue, Aug 11, 2020 at 10:58:40AM -0700, Nick Desaulniers wrote:
> > > Cc: stable@vger.kernel.org # 4.19.x
> >
> > Thanks Arvind, good write up.  Just curious about this stable tag, how
> > come you picked 4.19?  I can see boot failures in our CI for x86+LLD
> > back to 4.9.  Can we amend that tag to use `# 4.9`? I'd be happy to
> > help submit backports should they fail to apply cleanly.
> > https://travis-ci.com/github/ClangBuiltLinux/continuous-integration/builds/179237488
> >
>
> 4.19 renamed LDFLAGS to KBUILD_LDFLAGS. For 4.4, 4.9 and 4.14 the patch
> needs to be modified, KBUILD_LDFLAGS -> LDFLAGS, so I figured we should
> submit backports separately. For 4.19 onwards, it should apply without
> changes I think.

Cool, sounds good.  I'll keep an eye out for when stable goes to pick this up.

tglx, Ingo, BP, can we pretty please get this in tip/urgent for
inclusion into 5.9?
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdnvyVapAJBchivu8SxoQriKEu1bAimm8688EH%3Duq5YMqA%40mail.gmail.com.
