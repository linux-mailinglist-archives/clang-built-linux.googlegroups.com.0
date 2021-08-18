Return-Path: <clang-built-linux+bncBCAIHYNQQ4IRBDM762EAMGQEFNTXHRQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x840.google.com (mail-qt1-x840.google.com [IPv6:2607:f8b0:4864:20::840])
	by mail.lfdr.de (Postfix) with ESMTPS id 720F13F0E66
	for <lists+clang-built-linux@lfdr.de>; Thu, 19 Aug 2021 00:54:06 +0200 (CEST)
Received: by mail-qt1-x840.google.com with SMTP id o11-20020ac85a4b0000b029028acd99a680sf1716730qta.19
        for <lists+clang-built-linux@lfdr.de>; Wed, 18 Aug 2021 15:54:06 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629327245; cv=pass;
        d=google.com; s=arc-20160816;
        b=xsHHR/x5uuFZ6luob12cUsSlAH1yMLadv9ez6dLCllseuu4Hv28JWHr9wejCMt4bMv
         sBt5qCN0eAKxDp4SKQF+qFCGhMUXrls9rTs8X82RjRngB+GUTLdg2EGkGSvWwT3qJd7a
         fzu+usjxauUKN9UC3FsPAeY0gGOXEodIgnJFP0X+ZZ/MdSRZADsKWsQduN6tLvJbS7Jd
         wPiF7Ortu7EOev3QPr1NYKhv2YN75w5rPScSVkyl13r7Klmt3/JsQe7S1t6bvWt0BDkB
         0awm0ibpfmGPtbYxV3KQX/MpxqLFwuZSzX++et2TvrksR1BK9/R9J0isk//aFpNhTMZ2
         y/Cw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=4XonG0RQ+/0TYdX2vk1/zi97+FRe1I+abfPeiyvrR3k=;
        b=z1iB20jNBGfHEl4ap03ePWmrrB5IJddXDp0RJqp0YvVYsTvNgyiNqtu0j0NXzifgT1
         kuww4WiybcBpVBxrLgFG4x47Wj0WkXJ/UTJL+2Dt61QDXJ+3rN1t/XAKYhuw/APwzudS
         dVU0GPZvNfmFfZ/DLy3QUYBTvK/y1Ys+fRA8lnW2hVmUKOLZGr4fZb6YqyPCpgkqmwj8
         C3odIdl7wTN8yXegre7N0nb8aSNPTnEKAXOm6tzNz9Tb/Z5GW+tUkgb/ueKdgqOYfPNl
         5EZgChQue5701jccfk09Skf6AxysOztOuFvmMsL5dvkHnxWSfF49VSUT14iIvOBvDI5n
         ks6A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=bGU4j745;
       spf=pass (google.com: domain of seanjc@google.com designates 2607:f8b0:4864:20::102a as permitted sender) smtp.mailfrom=seanjc@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=4XonG0RQ+/0TYdX2vk1/zi97+FRe1I+abfPeiyvrR3k=;
        b=gVOF2FO9iOw0K7GD0GsyzAnAwqTf5FDbEutpW5/GQQQOOyXxsCr2Uc5MLnrDJB8H/r
         UkPOS4iojezGj9xgAlL2mfeCUMPPVvo7n46PPWiAcsdoEUUG45NX6mIRdkgkVZATl5gq
         eD0EUqz1xSGxqS/PEQWbzOSUyQ5Ui4ptNUTb8J6IpfrRigQRoOx6b/4Rz0+ZZfbft5+V
         2LGsxQzZvp0qMp6gtLR+3ZzFCaZkUXn41iA9ea/gsphhz6l184Otodh/ciep+UrlBHsH
         qMjA5juAitAaVGkX0JMzpBvAMf3yhhalkZ3ZfqclhV8K6UsnzeIe41ZBD5aaNXGyYxQO
         ogTg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=4XonG0RQ+/0TYdX2vk1/zi97+FRe1I+abfPeiyvrR3k=;
        b=G5PDyfuXweOHT1/2cmlPrtOWhfIDDFqnjwlN9qHjneJrUkC992u7ECTqIQcojekcv0
         ZXpVxkfK7q9CJc3I5ompX87etTEtcQAlwAmw+GFJUNPcLHQNEG1KD0k5UUYN/Lgdqjrn
         iKlMdI/xZQpV05ZT/iVHVBE3QButwFCe3peJVJhFiIUdPnKN1JhK9wTfXiJYjXGyDRnn
         w1klZnYQQX7enVRLs1zE6lfO9Gq6aJTeQdEGXtRZhLnh92z0cdg3tkwIPhyivWP47ip3
         I3nyUhV9JZhYK964ay4w+jIzLgUxVTowJgVqimJH1xAj1wrsqx2Bsq92fUtiFpRnJnEN
         3x1A==
X-Gm-Message-State: AOAM5335dJQWQ1L0uDB/YnSpFHg4FB4yHt6IONsIvTtxPZRzQ82hk0mx
	YBBHdgjGrFid9DJT5rW1Yig=
X-Google-Smtp-Source: ABdhPJy+1gVwbeYWAB3+v/BQpBIsRT5MBzHA2qFsr9TPMJ37zYO+U189nDnPob6eRqWsDWF1Z4paJA==
X-Received: by 2002:a37:bfc6:: with SMTP id p189mr658681qkf.33.1629327245549;
        Wed, 18 Aug 2021 15:54:05 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:c5:: with SMTP id d5ls386713qtg.1.gmail; Wed, 18 Aug
 2021 15:54:05 -0700 (PDT)
X-Received: by 2002:ac8:5845:: with SMTP id h5mr10019098qth.91.1629327245135;
        Wed, 18 Aug 2021 15:54:05 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629327245; cv=none;
        d=google.com; s=arc-20160816;
        b=u70ri3X/GvgR/JdBLJ5DY4dFGAqADumjdM3kwZ1AnfDtgfDqJT0PVzMmFIWsrDvTSC
         CXyPJtjvZFfNiUhampA5x8ARn9jsoSizgVfDdW+jvNqFX1mTrHbyYALywBd/R4v72wC5
         gYZFgTLIv6P+8sUIWh39plBl1hiH7I5nty1Ni5Rk2gdfqELKiwve+J4AfZV4s136Tn2B
         lIKDawVuHIj2YOdcRgUBAhWGYXunFD0cavkH4B44nXDA4KMw7dJVgjKpAo8UIRC39K6T
         Pp2qms1FmCAxGtDHw6S234N2figusyoSN3KKyYe2lYukpGh9E+94smuynbDLPYFxsyjs
         AYkg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=Bdg/OtOV5wymBEUwuQlX5+GK5JjmwLGgSiZ+Tmmadzg=;
        b=lYjEe7VINQejw6pYzej8DoT2BI16x1SnbYImrfhvn9ezsL0beumCwIFR7l4o8z5bnv
         Hg8cGEFJGgvJOdCB9TsVrNkpYwoOR8lCOEjxS1qjgM2OSBp+nXZxj9iR2U9h21qP9z+n
         NDehyAlLBrjZfvcJCiC0GhElxI30qqQqEMinYAi76Ea6WVCltPnJxny9wlv65GFIhK4y
         VwPO138Zf37KGx2TEO7rqzK5DZu/5aYpBJYPIUAJv7uPhQuoFHcBrhfTiulUFjoWwn5p
         CXbIhDAPUP8nLbgKIIX18Gyifxz6H1uH0KCoDR+fZmJBLpEWOx+9Fk74pOGKYvmalUzj
         C0jQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=bGU4j745;
       spf=pass (google.com: domain of seanjc@google.com designates 2607:f8b0:4864:20::102a as permitted sender) smtp.mailfrom=seanjc@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pj1-x102a.google.com (mail-pj1-x102a.google.com. [2607:f8b0:4864:20::102a])
        by gmr-mx.google.com with ESMTPS id s29si51181qtc.5.2021.08.18.15.54.05
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 18 Aug 2021 15:54:05 -0700 (PDT)
Received-SPF: pass (google.com: domain of seanjc@google.com designates 2607:f8b0:4864:20::102a as permitted sender) client-ip=2607:f8b0:4864:20::102a;
Received: by mail-pj1-x102a.google.com with SMTP id 28-20020a17090a031cb0290178dcd8a4d1so6116985pje.0
        for <clang-built-linux@googlegroups.com>; Wed, 18 Aug 2021 15:54:05 -0700 (PDT)
X-Received: by 2002:a17:90a:af88:: with SMTP id w8mr11746328pjq.104.1629327244194;
        Wed, 18 Aug 2021 15:54:04 -0700 (PDT)
Received: from google.com (157.214.185.35.bc.googleusercontent.com. [35.185.214.157])
        by smtp.gmail.com with ESMTPSA id s26sm894895pgv.46.2021.08.18.15.54.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 18 Aug 2021 15:54:03 -0700 (PDT)
Date: Wed, 18 Aug 2021 22:53:58 +0000
From: "'Sean Christopherson' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Kees Cook <keescook@chromium.org>
Cc: linux-kernel@vger.kernel.org, Paolo Bonzini <pbonzini@redhat.com>,
	Vitaly Kuznetsov <vkuznets@redhat.com>,
	Wanpeng Li <wanpengli@tencent.com>,
	Jim Mattson <jmattson@google.com>, Joerg Roedel <joro@8bytes.org>,
	Thomas Gleixner <tglx@linutronix.de>,
	Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>,
	x86@kernel.org, "H. Peter Anvin" <hpa@zytor.com>,
	kvm@vger.kernel.org, "Gustavo A. R. Silva" <gustavoars@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Andrew Morton <akpm@linux-foundation.org>,
	linux-wireless@vger.kernel.org, netdev@vger.kernel.org,
	dri-devel@lists.freedesktop.org, linux-staging@lists.linux.dev,
	linux-block@vger.kernel.org, linux-kbuild@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Rasmus Villemoes <linux@rasmusvillemoes.dk>,
	linux-hardening@vger.kernel.org
Subject: Re: [PATCH v2 53/63] KVM: x86: Use struct_group() to zero decode
 cache
Message-ID: <YR2PhlO3njPcFOkg@google.com>
References: <20210818060533.3569517-1-keescook@chromium.org>
 <20210818060533.3569517-54-keescook@chromium.org>
 <YR0jIEzEcUom/7rd@google.com>
 <202108180922.6C9E385A1@keescook>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <202108180922.6C9E385A1@keescook>
X-Original-Sender: seanjc@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=bGU4j745;       spf=pass
 (google.com: domain of seanjc@google.com designates 2607:f8b0:4864:20::102a
 as permitted sender) smtp.mailfrom=seanjc@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Sean Christopherson <seanjc@google.com>
Reply-To: Sean Christopherson <seanjc@google.com>
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

On Wed, Aug 18, 2021, Kees Cook wrote:
> On Wed, Aug 18, 2021 at 03:11:28PM +0000, Sean Christopherson wrote:
> > From dbdca1f4cd01fee418c252e54c360d518b2b1ad6 Mon Sep 17 00:00:00 2001
> > From: Sean Christopherson <seanjc@google.com>
> > Date: Wed, 18 Aug 2021 08:03:08 -0700
> > Subject: [PATCH] KVM: x86: Replace memset() "optimization" with normal
> >  per-field writes
> > 
> > Explicitly zero select fields in the emulator's decode cache instead of
> > zeroing the fields via a gross memset() that spans six fields.  gcc and
> > clang are both clever enough to batch the first five fields into a single
> > quadword MOV, i.e. memset() and individually zeroing generate identical
> > code.
> > 
> > Removing the wart also prepares KVM for FORTIFY_SOURCE performing
> > compile-time and run-time field bounds checking for memset().
> > 
> > No functional change intended.
> > 
> > Reported-by: Kees Cook <keescook@chromium.org>
> > Signed-off-by: Sean Christopherson <seanjc@google.com>
> 
> Reviewed-by: Kees Cook <keescook@chromium.org>
> 
> Do you want me to take this patch into my tree, or do you want to carry
> it for KVM directly?

That's a Paolo question :-)

What's the expected timeframe for landing stricter bounds checking?  If it's
5.16 or later, the easiest thing would be to squeak this into 5.15.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/YR2PhlO3njPcFOkg%40google.com.
