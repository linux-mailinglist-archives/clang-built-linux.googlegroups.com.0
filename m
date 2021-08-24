Return-Path: <clang-built-linux+bncBDHKZ7PB5INBBZUCSOEQMGQEJMZR4IA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53b.google.com (mail-pg1-x53b.google.com [IPv6:2607:f8b0:4864:20::53b])
	by mail.lfdr.de (Postfix) with ESMTPS id DDC353F5B6B
	for <lists+clang-built-linux@lfdr.de>; Tue, 24 Aug 2021 11:52:39 +0200 (CEST)
Received: by mail-pg1-x53b.google.com with SMTP id z19-20020a631913000000b00252ede336casf3973250pgl.4
        for <lists+clang-built-linux@lfdr.de>; Tue, 24 Aug 2021 02:52:39 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629798758; cv=pass;
        d=google.com; s=arc-20160816;
        b=enfDMJNf2fzJEIVuLtDLhfpNtYlc+/ZjWhxlcK9KlzW7xYDzeInDFb6xoXsQGxmgEr
         2NHcJf0FymJmy8h3sZaRiPWgzZUvEQuAetA1yNsdT+fTDl1JX0hQRWgQdZ1hYzfr2HEg
         3Xz4vUp6dRN79ebmkm21dajkoRJbPfFLuXUQQN14vULe5aAK01soM8eZHcrbnP9xQAnM
         ks59a22LqsrGg33YRHn9Is+L3duRG6cJ+guA7L9t2q2lYQMSoK7HSOfydP1cN+BOjm3j
         SEk7AuOYGhOsdylJHpYki7ViTl0+pk9n6Khz42gNO+fWnQs0hv98OC4La2dW+VwgYAPO
         Awsg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:date:user-agent:message-id
         :organization:from:to:cc:subject:references:in-reply-to:mime-version
         :sender:dkim-signature;
        bh=iuS4CrrYYZKlPKpOyYXk3aKREFvgCKZXwQWCJWsxQe8=;
        b=SChEQp8EiiCrNtIbSlrun5lYfym3/NU9delTi1QzM/GGLanuEI94/BPgKB07l7QXMZ
         CdulENLvxEB3bUuA+nYZT4F+q/kxzCBNzST5FcUTBRX1P8RD7b/A5DMVDLUdox+eoDJy
         46XGwttdn1PGvDrI4NpdMAgX4kQR2gdAa/r3DUlPdknSGl3rNkxCjAf686Rns0JDUmLP
         MdtIzKSXk1Ifn/AesHYOgKkO2hs3gk4KbAG65UAhkBZqYDAIrLSYetepCmRNBAwiwBNL
         281w1kib/G71SZXU/EpYLE7+1vqO3oSNYi/y9HA06NID2ABaQgsyyf1Si8fKik87cAeO
         XPXQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of joonas.lahtinen@linux.intel.com designates 134.134.136.126 as permitted sender) smtp.mailfrom=joonas.lahtinen@linux.intel.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:mime-version:in-reply-to:references:subject:cc:to:from
         :organization:message-id:user-agent:date:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=iuS4CrrYYZKlPKpOyYXk3aKREFvgCKZXwQWCJWsxQe8=;
        b=NBmma9gyq1l2Id6eb4BtcoH325xFh5unb+yJCt/9FTuuvAAvc4DdYJPxgwB07QTO5F
         mpFJVxrFUGRcwtvYFXKrkpTktpG3r+mTFD6NxZOWq5ScaknT1uZKYtHn19/UCNZ0ISH9
         UZ/9mivlZcqDmiPRmvJiDAZtGuSGZ8qQbj4SZpysclOiZcnoG1avrGzB1YgLnfmBBHXm
         FZjLHbpXy9fw9GOcvtv+ECE1WP8Cfz1eJOZNCDAQwmMZjyGb1j93GWVZ5gcagVhg5wwG
         7CZgUVHWjEC+5p+livL8lOrIvu5JYKs4wp5J7EUffo6gxumMMvEwWAKVbT4NYOMTtFGG
         LTEQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:in-reply-to:references
         :subject:cc:to:from:organization:message-id:user-agent:date
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=iuS4CrrYYZKlPKpOyYXk3aKREFvgCKZXwQWCJWsxQe8=;
        b=JYWUf9fhBorobKdErhbLXqsLn7lhsaIc28nNe1YV9Iwf8nXKHkrPhHGT9fGAOfyhy1
         N92UeMpGqCeEZcvPySgN+bKZqTObMa1wnWF+RWuq+f3Yo1Ir9xitG12KIynldgbdG4uA
         lPam2NpBHognGwBHW92UelwHFbcaEbubr7y29OevZPIJOV1aI11zM2uRkaBvH34/sfPG
         UDcHXA1IB1kZRpvVerPh2asPp2HUe30tyEbnRqZKWr0JZzHPdGMXqytfsiI0MynYU3ps
         IiVhQ6CI+c0TrVSByQwEFxDhJZ6ZQKERRcJ4gG3qhvLV/7535PNyzlI2g80aKHVh6aJL
         gbCA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533dItM/+r1l3XUjUFj2FJnPXa4X2RpWMME2LL9X6+fFiRC+XIVp
	Kmpi6fBmJ3bqKNMV6UenZFE=
X-Google-Smtp-Source: ABdhPJyvHx4Tpt8Hh99FD8xIE2UzyfU6KOS8tlnOg7r6agP/bh2AgHJDzGnBs+efkv6KwYj07PjmIA==
X-Received: by 2002:a17:90a:420c:: with SMTP id o12mr3502651pjg.101.1629798758349;
        Tue, 24 Aug 2021 02:52:38 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:bf47:: with SMTP id u7ls10086431pls.11.gmail; Tue,
 24 Aug 2021 02:52:37 -0700 (PDT)
X-Received: by 2002:a17:90b:128b:: with SMTP id fw11mr3587396pjb.161.1629798757825;
        Tue, 24 Aug 2021 02:52:37 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629798757; cv=none;
        d=google.com; s=arc-20160816;
        b=06YsIz20OKb2cvlufV/3IkuYDqIVHi8O/Q3/E3Ml9ZTEStPx1n9HrY03+I7UCZ0EHX
         9IapR/aVeyHvUOrfFR4MaWTixPt1LhwbvwiEEce8+J6KcYkzewNm3WmmGl8P/eR/zpoc
         sn1lAAWlYPDdtNB6JCY2rfyQgpUP3Kjj4xBOLRFNZlLNzjGCKZdAIEl5jvDXWnad4uUS
         RCqdAbsN5B4+tL68nKVQ7ZAfwKDm0ADJHrZS0qu8shokvCv6DXGx2tDru3lKnI9mZEpc
         lIkfIF558Hbt+hzFp+HVQmuyXA2outtxEXiWPlth10n5Dl8FB/0Q2Ro2kMFwwj3BWOqC
         iirw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=date:user-agent:message-id:organization:from:to:cc:subject
         :references:in-reply-to:content-transfer-encoding:mime-version;
        bh=KaAaVslxunofI7tA+PXuBxzBkYUWMNVYbSJFeoTm4Kw=;
        b=oEqviniNY6csdbTiSJVhTN7wlooLmkJP+br9xGaD3UX/Cwn+zaSZdKXMNYu1pHaCRR
         becbXYXq/C7i8spOQDzCpMrIL35hIGAoheUT5ki+8c7XQuhaSuiBKiaPeMYWIcCNKxql
         sMo21////dK5cbAe0fn9PuAIWpQXWzUWVBivO3y1motSJQbwFB1kQIkBomLyMK+toJCQ
         d+3Yg/JyfLtAGCm+dBTT+Dk4bWC55cWCZVCNDR/gb5UdOAzCP/fWlnTNxelrJ4drWRp3
         /yVcAVnofqxDgq/J4fr9+byGu23CbnRzp+TnnuKprLxL2nbsFMGpzcm9+D0KlssEex3V
         i30A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of joonas.lahtinen@linux.intel.com designates 134.134.136.126 as permitted sender) smtp.mailfrom=joonas.lahtinen@linux.intel.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga18.intel.com (mga18.intel.com. [134.134.136.126])
        by gmr-mx.google.com with ESMTPS id k15si1085876pll.3.2021.08.24.02.52.37
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 24 Aug 2021 02:52:37 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of joonas.lahtinen@linux.intel.com designates 134.134.136.126 as permitted sender) client-ip=134.134.136.126;
X-IronPort-AV: E=McAfee;i="6200,9189,10085"; a="204413067"
X-IronPort-AV: E=Sophos;i="5.84,346,1620716400"; 
   d="scan'208";a="204413067"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
  by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 24 Aug 2021 02:52:37 -0700
X-IronPort-AV: E=Sophos;i="5.84,346,1620716400"; 
   d="scan'208";a="526567561"
Received: from kmulhall-mobl2.ger.corp.intel.com (HELO localhost) ([10.252.39.114])
  by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 24 Aug 2021 02:52:34 -0700
Content-Type: text/plain; charset="UTF-8"
MIME-Version: 1.0
In-Reply-To: <YSPyNZ3I1LgvDYSw@Ryzen-9-3900X.localdomain>
References: <20210813171158.2665823-1-nathan@kernel.org> <YSPyNZ3I1LgvDYSw@Ryzen-9-3900X.localdomain>
Subject: Re: [Intel-gfx] [PATCH] drm/i915/selftest: Fix use of err in igt_reset_{fail, nop}_engine()
Cc: John Harrison <John.C.Harrison@intel.com>, Matthew Brost <matthew.brost@intel.com>, intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com, kernel-janitors@vger.kernel.org, Dan Carpenter <dan.carpenter@oracle.com>
To: Jani Nikula <jani.nikula@linux.intel.com>, Nathan Chancellor <nathan@kernel.org>, Rodrigo Vivi <rodrigo.vivi@intel.com>
From: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Message-ID: <162979875184.5663.3119766810404831323@jlahtine-mobl.ger.corp.intel.com>
User-Agent: alot/0.8.1
Date: Tue, 24 Aug 2021 12:52:31 +0300
X-Original-Sender: joonas.lahtinen@linux.intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: best guess record for domain of joonas.lahtinen@linux.intel.com
 designates 134.134.136.126 as permitted sender) smtp.mailfrom=joonas.lahtinen@linux.intel.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=intel.com
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

Quoting Nathan Chancellor (2021-08-23 22:08:37)
> Ping? This is a pretty clear bug and it is not fixed in -next or
> drm-intel at this point.

Pushed to drm-intel-gt-next with my R-b.

Regards, Joonas

> On Fri, Aug 13, 2021 at 10:11:58AM -0700, Nathan Chancellor wrote:
> > Clang warns:
> > 
> > In file included from drivers/gpu/drm/i915/gt/intel_reset.c:1514:
> > drivers/gpu/drm/i915/gt/selftest_hangcheck.c:465:62: warning: variable
> > 'err' is uninitialized when used here [-Wuninitialized]
> >         pr_err("[%s] Create context failed: %d!\n", engine->name, err);
> >                                                                   ^~~
> > ...
> > drivers/gpu/drm/i915/gt/selftest_hangcheck.c:580:62: warning: variable
> > 'err' is uninitialized when used here [-Wuninitialized]
> >         pr_err("[%s] Create context failed: %d!\n", engine->name, err);
> >                                                                   ^~~
> > ...
> > 2 warnings generated.
> > 
> > This appears to be a copy and paste issue. Use ce directly using the %pe
> > specifier to pretty print the error code so that err is not used
> > uninitialized in these functions.
> > 
> > Fixes: 3a7b72665ea5 ("drm/i915/selftest: Bump selftest timeouts for hangcheck")
> > Reported-by: Dan Carpenter <dan.carpenter@oracle.com>
> > Signed-off-by: Nathan Chancellor <nathan@kernel.org>
> > ---
> >  drivers/gpu/drm/i915/gt/selftest_hangcheck.c | 4 ++--
> >  1 file changed, 2 insertions(+), 2 deletions(-)
> > 
> > diff --git a/drivers/gpu/drm/i915/gt/selftest_hangcheck.c b/drivers/gpu/drm/i915/gt/selftest_hangcheck.c
> > index 08f011f893b2..2c1ed32ca5ac 100644
> > --- a/drivers/gpu/drm/i915/gt/selftest_hangcheck.c
> > +++ b/drivers/gpu/drm/i915/gt/selftest_hangcheck.c
> > @@ -462,7 +462,7 @@ static int igt_reset_nop_engine(void *arg)
> >  
> >               ce = intel_context_create(engine);
> >               if (IS_ERR(ce)) {
> > -                     pr_err("[%s] Create context failed: %d!\n", engine->name, err);
> > +                     pr_err("[%s] Create context failed: %pe!\n", engine->name, ce);
> >                       return PTR_ERR(ce);
> >               }
> >  
> > @@ -577,7 +577,7 @@ static int igt_reset_fail_engine(void *arg)
> >  
> >               ce = intel_context_create(engine);
> >               if (IS_ERR(ce)) {
> > -                     pr_err("[%s] Create context failed: %d!\n", engine->name, err);
> > +                     pr_err("[%s] Create context failed: %pe!\n", engine->name, ce);
> >                       return PTR_ERR(ce);
> >               }
> >  
> > 
> > base-commit: 927dfdd09d8c03ba100ed0c8c3915f8e1d1f5556
> > -- 
> > 2.33.0.rc2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/162979875184.5663.3119766810404831323%40jlahtine-mobl.ger.corp.intel.com.
