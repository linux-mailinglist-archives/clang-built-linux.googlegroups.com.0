Return-Path: <clang-built-linux+bncBDSMRV4B4MERB5FLU74AKGQETEHIHNI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x337.google.com (mail-ot1-x337.google.com [IPv6:2607:f8b0:4864:20::337])
	by mail.lfdr.de (Postfix) with ESMTPS id 19B6F21C4BF
	for <lists+clang-built-linux@lfdr.de>; Sat, 11 Jul 2020 17:08:38 +0200 (CEST)
Received: by mail-ot1-x337.google.com with SMTP id g70sf4660650otg.1
        for <lists+clang-built-linux@lfdr.de>; Sat, 11 Jul 2020 08:08:38 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1594480116; cv=pass;
        d=google.com; s=arc-20160816;
        b=NWRA4rtwwjaOA3SdpUiUoivr+jvNtGO7sLmYZVV97GAZ4VJEfd2dPRxlPfvwPy0UKi
         4VCoJwq9Y3sQvGvmP5HxWQpkl96KjBarNPvj4yl6GgA/zqe56e/O4OBNOMDNkgFcUljY
         3Qth7TIBX9StKgG0kG7E/j4DQ5OvcT6PMGhmJrNM746usOAHilq0lWwTpEk3yv4WDPC/
         H4MALLHiwpUE8HpXRQZIr2YFqAcZXGI2E5IYHPgEL3zWcAyo8cb8qFBrCVu3UVgq4Mfm
         OL8eGaSbXQNYB20LsXSi3beN3yvkxQkWU8Sl1/TOKvRTgFpk9XK4iXHYtj/vspH3EVQn
         6xUQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=RRRMMPq+DjZBjdnmVuigYHzx/fIIhXtIuKMne1N88uM=;
        b=nhkeh7pZbINFHT8kB2Cts9njCzU3VEYxKR45N8znd7T0nHnJz68dAjU8YI3PwCvo28
         G7hH02qRCtun5pXspqFpETti0O79sL8MmBNeHTI3ezsJ7+5XRIIVggWJQ9zOA39lpaqV
         +kWpNo8kALLK68G83kCrSr2EDVL7+FTA+QKHA2PRRQYYaKErB87h8K6veg/RY7cfi2oF
         sp6cEiIibk0QCL7P9UBXg8oibCogDdv6wU3PdHGsy4MCFpNTx304ITQC/OO/TOnMRn8i
         KyxSLsYXTJMPv4uOhuIfahHQ2zdUtPfPl9dRTcAv9mvsYCPB2WcoaW2wV8tfvhv78pwe
         3A6w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=NYu3lnVp;
       spf=pass (google.com: domain of thesven73@gmail.com designates 2607:f8b0:4864:20::242 as permitted sender) smtp.mailfrom=thesven73@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=RRRMMPq+DjZBjdnmVuigYHzx/fIIhXtIuKMne1N88uM=;
        b=C7aWg2X1Tvjn1Xmjx/maoCy5URztIeVRPwxItayTESLIrpgrwB09UT3wjFp27DH1ha
         JnCiIK4EEolum+kMlvfN8PLcSM5M14kODp2wPs3k+tnN4fVGqmMrBu7a1EjoZ9Zilg+8
         pzJ7CzQFkw3t7OuAZ/tzdmm8RyotaNuabUTrmf7k5VpsZyKXJR/ckWbOzVY8DgvtaFR0
         z9rdwCUPegQGQlEhHTQNIcu44nD2tHPjPqo3/ua0RDExKD/pGYBaTNiLzZGi95VdrLEw
         fNXE6DwEFbj6lbEuVpE5sLZMtRLe1q03pr4BpYg2YpJGY+ZrpEp7uY1OD9YJ66CyAmSW
         znbw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=RRRMMPq+DjZBjdnmVuigYHzx/fIIhXtIuKMne1N88uM=;
        b=sVFZ4caLprVqL2jRY8a9DllBjD5Kz2lJH4al2oJL+RFdI/B+uLqvkjL1v5y+DhcY/D
         HbvL2p+i03J7n1A1J5aSF757eJIgdae21usfz/1wpcwtyE8wTbwVFmH/aZ6WD/uJLJSO
         cgkOr6fy5HFpk25BNacVBWbuXZdoHlXdV0OZDFkyN27+cxbEXZySO16FQ225I8V7eY1z
         l8BPnbgXkUwpTIVacA3Ie10uHA4H9C8QQowhZy/T4LNhLpT9lAM7aq+G4Ftiv6Mi2ZDx
         eGoWi3A5uQJsy1Hmwzelep+nQJlaoyaY4dOseGcgjGBLJr8p2w+MaZg9WIcx++ceUpkR
         hB0Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=RRRMMPq+DjZBjdnmVuigYHzx/fIIhXtIuKMne1N88uM=;
        b=Lm5jVbM0hYlA5RK3rt90QdVX9Eq83GmAT8bHnWeSFgLPPU2VuBu3sCrIaVnlFcDRR2
         BEDUrnBcokDvgymYugoStxPSKMVTeU2zhqu6O9ddcGt+749rNOezJWk4yIMJnOrgzoj7
         gBN5dB18mBtL+6PPYS974PeXq7yl/Dmv3RUUY+39A02KQeKEIn3MWuUkrM45VM99o0eJ
         jWqjXDC0OUgHotIu9wl6n8wLiUz+2MEOE7jWMWEOwWvfAcE9U53jU+vg4Q+Odf8zlHFe
         fq+djSYX02UKUeF/D4agRkv+SMZCYcY3xExBwqnesfod0X/aleRQO92cyj3CtSsOCPh7
         W1Tw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530Cgpn/RU4HqFy4cZr2CM+hwaRTfpZnxc8A8CTc4AfRM2ycfbm4
	8mHRO1tVb/mkWZGJHkYfols=
X-Google-Smtp-Source: ABdhPJzjtbng7kmwN16JG24vhNxV84HAi+XCMSfGedX63eSPN8y3hqv4PzDvzpiVXQGtu+KhkkuxLw==
X-Received: by 2002:aca:aa82:: with SMTP id t124mr8174173oie.158.1594480116378;
        Sat, 11 Jul 2020 08:08:36 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6808:3c9:: with SMTP id o9ls2534846oie.6.gmail; Sat, 11
 Jul 2020 08:08:36 -0700 (PDT)
X-Received: by 2002:aca:30d2:: with SMTP id w201mr8168603oiw.147.1594480116111;
        Sat, 11 Jul 2020 08:08:36 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1594480116; cv=none;
        d=google.com; s=arc-20160816;
        b=HHxvUBl2dJWz6Tg86qEWfuYMGQODp3utqEM8U+XqBaHfwTfRY5gaSp2ZGqmoMAC4A0
         Q6r1iy9DrXtc3dBA2BNJ61nHxezje+hbD5V7jlUJUxTlQr30PTAVQgE1Pel/AI4u9N3w
         pMdiSyMqHFfknqNwfQRI+JAOnLn0QUti+vQ5FqTD3S8cbd+8XGuM87bnjPxUw9B1qF4N
         nyXULORtHashp6vtfU0Qt8B+usqCp90DXyxW5lFhixgO/d+H5yBwSeoVcoNlYxOd/TgZ
         igV2AXTT5FNaQPNEOywVzHwdA3ZlyrjvsAny1lqcWSTkA551UgonG9BLs39eADqcxbam
         7DCA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=ZRBM4MxQjZwlr3vgeAC3G2zshvu8PlmN+TgUFaaHs8k=;
        b=y9YeuOxi4xVkIG0ftnwCqQQbGReAe1EKe2LxzJlKYEfUNGJxglRj9RBYKIZbYM5SQH
         ZC3t6W3cW53+j9L2VRwc2hkrs9AHuKenk1pRM/GTYVX91Qt1rowdvq9+fIstBPBvyG48
         bTCC/BOvAmZLKLdutI7WZlVv8NIQ8VPYybdsXuNqMYlxk3+gubpONXfAeCtXT95L4GuB
         fXVLHGTxQCctoHRv9fOHY/70bIwfD7HxcQPYFroDbJCz/DBeyZZ9aa+Hea3ZbyN/rX6/
         B/pXA714qBBQ2EZ05mTCvVYRlkpu14cp5llnDPIiahcTism8sHuVDFw/euX/Pd6n0GKd
         qJmA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=NYu3lnVp;
       spf=pass (google.com: domain of thesven73@gmail.com designates 2607:f8b0:4864:20::242 as permitted sender) smtp.mailfrom=thesven73@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-oi1-x242.google.com (mail-oi1-x242.google.com. [2607:f8b0:4864:20::242])
        by gmr-mx.google.com with ESMTPS id a65si465780oib.1.2020.07.11.08.08.36
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 11 Jul 2020 08:08:36 -0700 (PDT)
Received-SPF: pass (google.com: domain of thesven73@gmail.com designates 2607:f8b0:4864:20::242 as permitted sender) client-ip=2607:f8b0:4864:20::242;
Received: by mail-oi1-x242.google.com with SMTP id j11so7328951oiw.12
        for <clang-built-linux@googlegroups.com>; Sat, 11 Jul 2020 08:08:36 -0700 (PDT)
X-Received: by 2002:aca:2b18:: with SMTP id i24mr8340377oik.103.1594480115647;
 Sat, 11 Jul 2020 08:08:35 -0700 (PDT)
MIME-Version: 1.0
References: <20200710024100.GA2055744@ubuntu-n2-xlarge-x86>
 <20200710122459.GE5653@sirena.org.uk> <20200711033036.GA4486@Ryzen-9-3900X.localdomain>
In-Reply-To: <20200711033036.GA4486@Ryzen-9-3900X.localdomain>
From: Sven Van Asbroeck <thesven73@gmail.com>
Date: Sat, 11 Jul 2020 11:08:24 -0400
Message-ID: <CAGngYiXBdT1jOwRS_A03iQiGRbcpPncBxtVOsnFpmauO4ffS5A@mail.gmail.com>
Subject: Re: sound/soc/codecs/zl38060.c:614:34: warning: unused variable 'zl38_dt_ids'
To: Nathan Chancellor <natechancellor@gmail.com>
Cc: Mark Brown <broonie@kernel.org>, kernel test robot <lkp@intel.com>, kbuild-all@lists.01.org, 
	clang-built-linux@googlegroups.com, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: TheSven73@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=NYu3lnVp;       spf=pass
 (google.com: domain of thesven73@gmail.com designates 2607:f8b0:4864:20::242
 as permitted sender) smtp.mailfrom=thesven73@gmail.com;       dmarc=pass
 (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

Hi Nathan and Mark,

On Fri, Jul 10, 2020 at 11:30 PM Nathan Chancellor
<natechancellor@gmail.com> wrote:
>
> Sure, you could hide it behind an ifdef for either CONFIG_OF or MODULE
> (since you could build this as a module with CONFIG_OF disabled).
>
> I just figured this would be something frowned upon but if that is how
> you would prefer it to be fixed, then I have no objections to it.
>

That's how things used to work in the past: we had to #ifdef CONFIG_OF
all the driver of_XXX code, so it could be built on !CONFIG_OF.

I remember problems with this approach: it generated a lot of
visual noise, it was fragile in both directions: including too much,
and excluding too much. Last but not least, it required us ARM people
to test build each patch on !CONFIG_OF, which many conveniently forgot
to do :)

My "vote" would be to fix the warning using compiler magic. For
example:

#if !CONFIG_OF
// #define of_match_ptr(x) NULL
#define of_match_ptr(x) ((x) == NULL ? NULL : NULL)
#endif

That seems to eliminate the warning on my gcc version 7.5.0, but of
course as compilers get more clever, this could eventually
generate a warning (if it doesn't already on clang).

So perhaps use compiler attributes instead?

Stand-alone testable code snippet below.
======================================================

// gcc -Wall unused.c
// results in: match_table is NULL
// gcc -Wall -DCONFIG_OF unused.c
// results in: match_table[0] = 5

#include <stdio.h>

#ifdef CONFIG_OF
#define of_match_ptr(x) x
#else
#define of_match_ptr(x) ((x) == NULL ? NULL : NULL)
#endif

struct of_device_id {
    int id;
};

static const struct of_device_id some_ids[] = {
    { .id = 5, },
    { /* sentinel */ }
};

struct driver {
    const struct of_device_id *of_match_table;
};

static const struct driver my_driver = {
    .of_match_table = of_match_ptr(some_ids),
};

int main()
{
    if (my_driver.of_match_table)
        printf("match_table[0] = %d\n", my_driver.of_match_table[0].id);
    else
        printf("match_table is NULL\n");
}

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAGngYiXBdT1jOwRS_A03iQiGRbcpPncBxtVOsnFpmauO4ffS5A%40mail.gmail.com.
