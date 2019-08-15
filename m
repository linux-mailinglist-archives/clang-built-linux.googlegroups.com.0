Return-Path: <clang-built-linux+bncBDYJPJO25UGBB55Q27VAKGQE7EEYACY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x238.google.com (mail-oi1-x238.google.com [IPv6:2607:f8b0:4864:20::238])
	by mail.lfdr.de (Postfix) with ESMTPS id 0400E8F6CD
	for <lists+clang-built-linux@lfdr.de>; Fri, 16 Aug 2019 00:11:05 +0200 (CEST)
Received: by mail-oi1-x238.google.com with SMTP id t22sf2087576oij.17
        for <lists+clang-built-linux@lfdr.de>; Thu, 15 Aug 2019 15:11:04 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1565907064; cv=pass;
        d=google.com; s=arc-20160816;
        b=mOt6u5OCQjwZxLn5dq6OezhvFQONI6y8IPJ+fmQZqYGe/zBpxpNrjf5SoJ52EotAt2
         n5jAtvWPi1TLdG59KQmXcTRwgNGdeVmU1KxATuSGv3OuYMedAv7JWNJ9R/4VtRPOSsje
         B24YehQhaHpwi0pnXwt7OA2QiOKqsPtJD4D+q7Kp084jJ0d+ZyICfilZePdyzMi74q/n
         MpaquU2T2vHHolNUcESR4EOjd9lZpsjyjjfk5JNU7RvLkLQJzAeIz1QrO7zrqB70Yrlp
         jRv5eIokTNzJXX0LN/+/HhiNEqPQACNUu67/5XvUA+wsFBOeUP9cbxu96/U4lp6Mc/5r
         zytw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=zp05tdw8EajBKBVUk09470OU8Qs+xF/Inr+7KzgLo0g=;
        b=c4sMeBTqUpoDFlXlh8/kVm0X3WqW8zSAfCJGhy6/1cUbe8yxO4vjZyPeVgE+QIiYSs
         AUMrGPx6UXOslozom9av/lJwkHh6IADgY+FjlvqAAMcRtkZmz6FiaAiYWtwZ/zurgSyW
         d78+r2pp9Kvwk5kDHQGpWGJ1QU8aDKr8Mkni8iI7Z5kIB0rSFkoatfYsHUo9lFE0E6an
         TTemrd0Bh/1pLTrnIDv7SaMnFWb0WpEmZkIc+tdz+NnfMucU+VDmN2TMEY79jUszp1cT
         y6fsUQQg3mPYn3igI+lWrKKIWMUHbS/0OZfsvX45pshiqbE5TFNV5uRzzabbNXCcCfQ9
         aYVQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=s4GnhNmI;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::42f as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=zp05tdw8EajBKBVUk09470OU8Qs+xF/Inr+7KzgLo0g=;
        b=eLRKJxTeG2WzeTY7dVW1Fj9Cublxj9hM6O51njlApxxwQqbL6xcFt7PG1CtWy+4Y1b
         WIi5ZZHkwjeso3t9EtRGoDQWc0M9CQjuQsoGZ1+zD4bVgfvRX6rznkv0KcmT24CVathm
         5AyrSigIfcI8ihk6VcsO8Y/8krxvJTOCiveHjsCKFdVtoBrERgXlqSPd4NR2vQwyCTuT
         s2Li5C8WPHE7DeGBjwh2qTu8/D6UiBXmki5bLze4NvI0Ve87n1SFJiIEOr3/u7oPQCMR
         vmTU5oH+V/iga9t4EfyeC8T3tgJDH7X2FRU0Aa99zU/t6MKh8heKuS2DzhaO/H4JtBDC
         sGJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=zp05tdw8EajBKBVUk09470OU8Qs+xF/Inr+7KzgLo0g=;
        b=E8RgCeAgoZbPgIUIlcGTmMUxVdaICq+reSrtU825L1pmD4kNmQgQEH6vQTeQZ1o0dn
         /ggN0LXKhfE791j06QuG3UFPI0FmchrcpzmmkpdggUaDvRJ0n3wBsH0QluI3mr/nZBx6
         Cmr+3ewMQo6nNpXvmHaLoEo8w2rP/WTk3opAhWA7MOR4bW8LWTRBPukoaTWhlUalNKNr
         34cym+CQC4gLHcMM4euzFIhb2jg87LOO5bTlEq78hLDOrNrIZpc6PAqYm5g6RG6/VDf4
         80l3oa8hsoh2ZU7w9sw6s6knVQ4kzbGPQuKPQPkVZxxS7vvCf+9fUeujolzV8ydxCYi4
         v/vQ==
X-Gm-Message-State: APjAAAXdbtoX5V++muBir4By1zJXSPANOT8S0QVFU1BX4LReX+GR7fuU
	18Kmz7Andrp1yce2jRUP6ag=
X-Google-Smtp-Source: APXvYqzg+fUeD0ffsvKt0uCDmtq49yr9E650bro5/C0V22XY/wMa8F4XhbkydWRtRhI4YyU3BQEfHg==
X-Received: by 2002:aca:3808:: with SMTP id f8mr3111335oia.158.1565907063876;
        Thu, 15 Aug 2019 15:11:03 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:187:: with SMTP id e7ls1287865ote.0.gmail; Thu, 15 Aug
 2019 15:11:03 -0700 (PDT)
X-Received: by 2002:a05:6830:1143:: with SMTP id x3mr5279828otq.19.1565907063572;
        Thu, 15 Aug 2019 15:11:03 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1565907063; cv=none;
        d=google.com; s=arc-20160816;
        b=SSxVH2HE4E1LFZyPUg/IUmcUDCjjkXR8U7jwW3YNAEoFgmzNqCNm7HGnvsJ/f59nlv
         hPzd5CNx7W43PiUDCWC4l0n5QOpQQqW4xPJDW11ojTaBW/gkhkutCQZYt6aKX5bVXOJc
         wrgedy89Z3geaogSfFa83WduEEOjgy4FKYzW/2bYEgTWOwpjVJl24AT+A7tXvpQH8RUz
         mQXZ6hWzUlNGQ6zwLMzSY474Hs8iFEJZjIj/gHnpNx1NYWoRe2C0ZXAUImfclHdgt4Z2
         pRw+YZfPvhvncWTC5yJ193nKuh/8fzS58pz71oxSelNmKwFsogj3p3YN2OL/j4aLxAry
         gCDA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=l5b1kyUAwC+kAjsJTZ2cGhTvkgdjwLF+5/oOlDRLTTQ=;
        b=AJjgaLMorN3eP/MFYnsNhr0cJWknhSEKOFOMl6hmAFuprJaQeVgyxeiHqFMxnpCI+b
         R29ZqcDGKoeIt0oVGrppFQ/H4eBnP5LYDJr1MQgUnX+d3ABpERJAn0+qwoC5vlpFkq+V
         Ax/b79SX8k9Kth3r3fCKz5NIn9IMhQqYkP9C+EwOhm4kMy+Na9RAIdH1nezvCgDoAWb4
         1Hp2kWieAHI8Ni3sctQYZVCX01ySiOOBbxolnf1sd08I3m3JZVge9pZjypGQcJxplqxq
         iPCanGxPg/+9DG1uROhtyM6mYPAqC1ayUowsTNjbS9eSGWjopCBZCifQIuKTENTJCg4E
         U5LA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=s4GnhNmI;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::42f as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x42f.google.com (mail-pf1-x42f.google.com. [2607:f8b0:4864:20::42f])
        by gmr-mx.google.com with ESMTPS id y188si85054oig.3.2019.08.15.15.11.03
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 15 Aug 2019 15:11:03 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::42f as permitted sender) client-ip=2607:f8b0:4864:20::42f;
Received: by mail-pf1-x42f.google.com with SMTP id q139so1991709pfc.13
        for <clang-built-linux@googlegroups.com>; Thu, 15 Aug 2019 15:11:03 -0700 (PDT)
X-Received: by 2002:a63:60a:: with SMTP id 10mr5047121pgg.381.1565907062228;
 Thu, 15 Aug 2019 15:11:02 -0700 (PDT)
MIME-Version: 1.0
References: <201908151055.OL6W1ZPG%lkp@intel.com> <20190815201444.GA119104@archlinux-threadripper>
 <20190815201726.GA5813@localhost.localdomain>
In-Reply-To: <20190815201726.GA5813@localhost.localdomain>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Thu, 15 Aug 2019 15:10:51 -0700
Message-ID: <CAKwvOd=Wgr_HhJACpO_x93owqXKCUp2Ydcd7CjF=9V-1b2+4tw@mail.gmail.com>
Subject: Re: [kbusch-linux:lru-promote 24/25] include/linux/mmzone.h:282:61:
 warning: use of logical '||' with constant operand
To: Chen Rong <rong.a.chen@intel.com>
Cc: Nathan Chancellor <natechancellor@gmail.com>, Keith Busch <kbusch@kernel.org>, kbuild@01.org, 
	clang-built-linux <clang-built-linux@googlegroups.com>, kbuild test robot <lkp@intel.com>, 
	Keith Busch <keith.busch@intel.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=s4GnhNmI;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::42f
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

On Thu, Aug 15, 2019 at 1:19 PM Keith Busch <keith.busch@intel.com> wrote:
> BTW, this is a pretty experimental branch. Is there a way to mark a
> branch as such to have 0-day skip it? I occasionaly do some pretty quick
> 'n dirty hacks for these PoC features and I only push them for easier
> collaboration, and 0-day can end up making a bit of noise for things
> that are not quite upstream ready.

+ Rong
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOd%3DWgr_HhJACpO_x93owqXKCUp2Ydcd7CjF%3D9V-1b2%2B4tw%40mail.gmail.com.
