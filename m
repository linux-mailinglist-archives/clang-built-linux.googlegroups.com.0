Return-Path: <clang-built-linux+bncBCLMHO6ARMORB56S6TZQKGQEQAZEBLY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x740.google.com (mail-qk1-x740.google.com [IPv6:2607:f8b0:4864:20::740])
	by mail.lfdr.de (Postfix) with ESMTPS id E4453194B66
	for <lists+clang-built-linux@lfdr.de>; Thu, 26 Mar 2020 23:15:20 +0100 (CET)
Received: by mail-qk1-x740.google.com with SMTP id 64sf6426028qkk.1
        for <lists+clang-built-linux@lfdr.de>; Thu, 26 Mar 2020 15:15:20 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1585260919; cv=pass;
        d=google.com; s=arc-20160816;
        b=p+Ow0dU9STSNd5Mwf781vlOBb4mVahZF2Rv7mMY0FwxvekWG17T0P9WabyX9xXUzG6
         9JXHAS2Vl7v4dmOBBfjjjIdL654U7r/+KDvN73G+zjpKAuC1/5D0LIJ1+cTSwmdjChpd
         EJjXqjkPE0H7aCai+NCDyGI0d/8L7nmIXZNWVua/FzX1PN2p7rBeg9ObHOqf9W4iEwz1
         tl9CiFxa5HRkwT5DjjN7TAmBV0AhWRdiT1IjjEqWpNz5A0smgDl7bvAKMgasihRvnxig
         fo2gZ79/vAVfNSTEd/7bQBkHOUahZNm90zOC+LukCOFJtIGDuaTpAnu4B07w5OAzv4Y7
         TShg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :references:organization:in-reply-to:subject:cc:to:from:ironport-sdr
         :ironport-sdr:sender:dkim-signature;
        bh=tEaxZHvawoHPXJHSkJl65u/pKmNh/l5kmq2vaphR1YA=;
        b=RjKA1XuuL1QMio1SU7/eyfEUX976LmWR1M9zzEbj6i7YqAKMbonPkvpaLm3CfYf6F5
         ovaCRl07rLwUE5uUuIOlIsaGIMJFvZ1dmzYrga+JoROC5v6ihRjWbf9ea9W446+18pRW
         gcNJIjdvmu/2/XPARR7PzBTbDUxS1xDpxZ3NUVTWnazjDM+D6JYtw+hcTD65W1y6MvRI
         lEh1nTVtqlSUg3fcNJ0Y6jWFq1gmvlw3T+r4c+8c/pz/Zzb+bFBK4LrwP+rlLNybRtsI
         0yL87mAHq6lTfTRxu+vF/0GHP7CpZHodfJZGHEDR7nzqyjm5FYkGDPWYyk1cfWTpY04u
         kCQQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of jani.nikula@intel.com designates 192.55.52.43 as permitted sender) smtp.mailfrom=jani.nikula@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:from:to:cc:subject:in-reply-to
         :organization:references:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=tEaxZHvawoHPXJHSkJl65u/pKmNh/l5kmq2vaphR1YA=;
        b=sq7uOA3fl3YL+3IoDBbqFkWqPdHMZnxQNhmGx3Z0ocg5ZMFkrn+8x8525/r0xttm6Q
         dpvzHCCrMdJxDyaDGr1OEh49hSdk2CTukqI7Z8v0g/Nvyrg1KyfAAWvbePcw541H85np
         Wgw4PDWACTBG5Bp94ouuG83D1MIf/LN7/UJOwfdf+m6fkc6dIdqOLOUGK6tPYtOI5KD2
         cJk/mUWbY4F52Ipdig8DVIP68oeNMHuOrb1unfzdYdAorvvuI9pH8pCpeMkGs4HSTT+Q
         V7yrpxmPzMIYp1lB1NhSvtczQcKcQmb3GqS8e2GIWRumV0uSLFXCCGjcgzDPf8KlRQTQ
         gmqA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:from:to:cc
         :subject:in-reply-to:organization:references:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=tEaxZHvawoHPXJHSkJl65u/pKmNh/l5kmq2vaphR1YA=;
        b=bmRDlz5c/h5m9dvAAII8pZwl3suFNMUN+q2WXY8b7P0JS2zFEXi5hRA5jYHB7c4gzi
         Dmh/8FKcNu+BHYYYRQIfKUbCAfFsjEN2ulDA4AD/Op4b6aI2WOcimBP8YgH4lRy16kbD
         z+5gxAkFEpYORDJFwyRemgcRIRrVAWzMK8vtdyH2ais8R53KIaLrn7wobrYuqQDEitz3
         uCt1JlUQPOMSMFGSng6Eua6CPuDpBB7+9LZiSkr5qLbmCaquLhbtCM3h49EONDDUvrVW
         fPkY44CXlsvxlmy3KJsn0eW+8TXjTTTBiZt4HIqIUopfOLugnjl6JpYXyW6lQ2g4GpQl
         g/hA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ0sxPwCyRUUnMaBTfROhE+FiGtgB6eGfPCmcUe9ewMsUoxAJkjH
	O7lB09aY5GWwA8WwptGcCWE=
X-Google-Smtp-Source: ADFU+vsQHTH37BIcasasCFOFB7GFh7km/Ayp071vLRiuw2xs3KMaSkjOVUJnQQZg2SdiP28uSteuOg==
X-Received: by 2002:a05:620a:789:: with SMTP id 9mr11113994qka.170.1585260919799;
        Thu, 26 Mar 2020 15:15:19 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:290d:: with SMTP id y13ls503578qty.10.gmail; Thu, 26 Mar
 2020 15:15:19 -0700 (PDT)
X-Received: by 2002:aed:200f:: with SMTP id 15mr11044470qta.152.1585260919391;
        Thu, 26 Mar 2020 15:15:19 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585260919; cv=none;
        d=google.com; s=arc-20160816;
        b=TfVlVcs98sQKIfcfVYycRHULtemFoS+pUZ2zRl/YVfkx/QhA9cj8+JftBeU60S07Jn
         10zbvxrIaiMqL0nIrR8dn5aQJt6zo5PpYXRy5CfS/97ZEPhD3MptI9vLNwUaGb1if74X
         zXJZUv+xY1B5rvE4Q9Vn2voefWj50XGXk5TinQKkg+hKZ89w7WvE2dEKSD57NWngEP5R
         kCdq+ANfkuf3rStiM+k48QoVDKXpfHQJLgkJKBj4eZr4EydZSfqangh2RAH4mzmiolCg
         qOHlgbifOkILkWRxBRhMWnBk3wJfWCXl7kshhTdKeqwhnu5DEM/UuzknC3lyS6FeX2c5
         dsYw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:message-id:date:references:organization:in-reply-to
         :subject:cc:to:from:ironport-sdr:ironport-sdr;
        bh=M2ZEXofAPLrcRj83OxN71cEeNXhGTLgsP02ApJXRHfc=;
        b=VEtmkAZ32QfDIxNGQ35zO0obTSsuzBskBc0vzG0UI1PVcaEzDgAJoHx7B83NGHQWjG
         K9kFdzoH5dthG5v5gKCkKUf7tLL8sVIFpfKyf4qV/KbI6DJ3JKIYS2UFdZURze/eLGlB
         TqDHbx6ykEUO/fr3iieaLZ1AvvW3ZI8l7PnQ0ZjJI9q1Od2ipuE33wTeXdpCJPEE997v
         CNBka4Rl2ay4NB667YHlT7mw36hgoY1q5pKY0AT6my7jMt9mtLhLl2KHBHBdODrGLOVd
         w9MMTX4io/qPoV24cJ2OxqAxyy7Ds+HTKfZaMGptlJCCi8LvBACme4JQywCnvRRqGvtX
         Iu/g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of jani.nikula@intel.com designates 192.55.52.43 as permitted sender) smtp.mailfrom=jani.nikula@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga05.intel.com (mga05.intel.com. [192.55.52.43])
        by gmr-mx.google.com with ESMTPS id 198si175211qkh.7.2020.03.26.15.15.19
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 26 Mar 2020 15:15:19 -0700 (PDT)
Received-SPF: pass (google.com: domain of jani.nikula@intel.com designates 192.55.52.43 as permitted sender) client-ip=192.55.52.43;
IronPort-SDR: 6BH/ml4COMb2PF+KG07We46MoX5HkDyKAneNc9qpEBnNtV/uVbBYRCFHqcsp43x2SF6Z02xi0i
 nNDoGWZTrobw==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
  by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 26 Mar 2020 15:15:16 -0700
IronPort-SDR: CKUk0FCouSsk7al6Cj8rQPk+zMLDVT1BC0SFC1EzauelJhK0bySNnImENlWjDo4/4SL+s6i+Y7
 qWoql0QiJ4nw==
X-IronPort-AV: E=Sophos;i="5.72,309,1580803200"; 
   d="scan'208";a="420877850"
Received: from mschuste-mobl3.ger.corp.intel.com (HELO localhost) ([10.252.32.130])
  by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 26 Mar 2020 15:15:12 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Nathan Chancellor <natechancellor@gmail.com>, Nick Desaulniers <ndesaulniers@google.com>, Joonas Lahtinen <joonas.lahtinen@linux.intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>
Cc: Michel =?utf-8?Q?D=C3=A4nzer?= <michel@daenzer.net>, Chris Wilson
 <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org, LKML
 <linux-kernel@vger.kernel.org>, dri-devel
 <dri-devel@lists.freedesktop.org>, clang-built-linux
 <clang-built-linux@googlegroups.com>
Subject: Re: [PATCH] drm/i915: Cast remain to unsigned long in eb_relocate_vma
In-Reply-To: <20200326201158.GA30083@ubuntu-m2-xlarge-x86>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20200214054706.33870-1-natechancellor@gmail.com> <87v9o965gg.fsf@intel.com> <158166913989.4660.10674824117292988120@skylake-alporthouse-com> <87o8u1wfqs.fsf@intel.com> <ff302c03-d012-a80d-b818-b7feababb86b@daenzer.net> <CAKwvOdnaRG=7mib9vtWX4wkjQXHeUiioonTaZLStMVXfOOSUfw@mail.gmail.com> <20200326201158.GA30083@ubuntu-m2-xlarge-x86>
Date: Fri, 27 Mar 2020 00:15:09 +0200
Message-ID: <87r1xehifm.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: jani.nikula@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of jani.nikula@intel.com designates 192.55.52.43 as
 permitted sender) smtp.mailfrom=jani.nikula@intel.com;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=intel.com
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

On Thu, 26 Mar 2020, Nathan Chancellor <natechancellor@gmail.com> wrote:
> This is the only warning on an x86_64 defconfig build. Apologies if we
> are being too persistent or nagging but we need guidance from the i915
> maintainers on which solution they would prefer so it can be picked up.
> I understand you all are busy and I appreciate the work you all do but
> I do not want this to fall between the cracks because it is annoying to
> constantly see this warning.

Apologies for the delay. As I replied first thing in this thread, this
works for me. Thanks for the patch, pushed to drm-intel-next-queued.

BR,
Jani.


-- 
Jani Nikula, Intel Open Source Graphics Center

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/87r1xehifm.fsf%40intel.com.
