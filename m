Return-Path: <clang-built-linux+bncBAABBQX3Z6CAMGQEA3C57EA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x140.google.com (mail-il1-x140.google.com [IPv6:2607:f8b0:4864:20::140])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D5713755B0
	for <lists+clang-built-linux@lfdr.de>; Thu,  6 May 2021 16:31:31 +0200 (CEST)
Received: by mail-il1-x140.google.com with SMTP id a6-20020a056e021206b02901a532cdf439sf4550428ilq.16
        for <lists+clang-built-linux@lfdr.de>; Thu, 06 May 2021 07:31:31 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1620311490; cv=pass;
        d=google.com; s=arc-20160816;
        b=bqn1Mzq5c99DGDK/CbiJ+5T+Iig+I3V5yqnexUzeQC4/vGtzXZDKRgfHrWwWUiHXRd
         Hd/SuWpvIe6ZZG2JrAFU26f5oSaWW19sb1B5XO9ZH/FehRZEleoRBSAjbMHiBfHUWOcr
         wTSzBhZkB20qF0ofvJ1ql/LWJ5nyNfE+C8cwCgPkvlv3Y133olcmQ5a/3wsUqycOKpDJ
         7kans25hwbOPOQKs4UsIMxR7IGVaxApq9JmeMpQEs0NapIFGCpbBlfal5SBB5Q0lIh5w
         QcG47yng3RTL92OwSy2h3OvemLEW1Iqh2P5k2aMa1v90g0lwFcwlsMU7t8mWfPZKOduy
         OzqA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=sGYjetZktvroknFPWoMhaxwzUmFZrKId/w5u/oCA3zU=;
        b=mB752KCkFkT1TkcqPeZm4yzXwqeT+iJsihFLG7Zp9tEAS8m+oJuUdGcG0q7VpRygGJ
         mfkSoIRvTBSMoVd8VzNzFo/3Ocjs9G8OflN1Su+QiybKcwCn7qzF+D7ug4jSELS8O3mu
         qlfoyjyUO0n0ek8wQOgwTYEticx/bHmRcsUPL21r4nBJlPRm+J4698/dP/8bUP2NMpWF
         PC8YhojgKRs39MMe/0T0GfsGjkAUvZr8VGDC8ZliPO5n1VcdGHOB9w85QsZgSqjoMXJH
         aP7O5Cg0n+OjuHKB2Gj4Yzwx74pSLNaaav0X9HoF9TSqbcxbi4srCvJA14bxWgxQvK93
         otuw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b="fXD3/CY/";
       spf=pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=arnd@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=sGYjetZktvroknFPWoMhaxwzUmFZrKId/w5u/oCA3zU=;
        b=IGncZlWmCOlZBI7KbNNiI3a6J1JBwZ6MmYNC9VvcOFmn38dVjVxTn6PNQJJJC/fnUv
         vEVnvydCFL0jrJY6yee0fGdps8JqTr/5WUdkVuxTMgAW5T4QyxyEj4S+VFUPYs8O6nIy
         zAPB7ejsXOP72kgAslAyTwpZ4sgSB7+0dnXDZXzu4JYTTDWzAUCbMyIVulYk522hGg+u
         VyZNEkoQoQuqoEdk0xDCimJXTEpHRP/MpYuKPQJhwuDmEkHKg8zG+vMykSpVLxUQ0GFD
         mBZ+dqnqntKJ79l/lJGRQE2myYvFU2wIdLsPNzmEtFAFSAzjZYW8aq6C3oTDM5f5Kch5
         uM7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=sGYjetZktvroknFPWoMhaxwzUmFZrKId/w5u/oCA3zU=;
        b=f1VMtEc6OX4GfDOEQZMz1/V7QB4c3+Wz4+eMtcFofVIW2OWPs25uAiXX0Lnwi/pCq1
         E6RbyOvSU5nV6EHQEgr7cu00bfBOX6bdDF16GuBNPLvQk21tw2cKk3QqnoawPRcGXxnD
         5Iu8xiYuWyN4pBNYep4m5yqu6CUD+OimOJ7VV7UnCxl4zVR0SQ3VOLxQEyQEn42qa3L5
         WUU9s17504/7Ugiv1MVKwp2ZhfwGujSY2oifGzor5C/htzmTDepY+5JXaCkv2WbIL3yd
         H/H4ja7zMXKHE+QmWrO/U6p9cdkYMHxbGx1FKp6Q5FOX+phuUiGmybX5RDqsK1jS4rTB
         kPdA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532WfEwBTgYiafQJGdwYAqx6UiAbSu8Vx2WWEx0E7tKWk+Vo+Scy
	gHN1yKhROpyBqfTqQVZU6Vw=
X-Google-Smtp-Source: ABdhPJzshZ5xaht/rB2y7WPswZSwVEsA13hXq/wN4lmTxPPYBjTGQBeG7H7GnTU4DtkdpcQwYIsCOw==
X-Received: by 2002:a6b:f602:: with SMTP id n2mr3582654ioh.174.1620311490499;
        Thu, 06 May 2021 07:31:30 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6602:1689:: with SMTP id s9ls456428iow.1.gmail; Thu, 06
 May 2021 07:31:30 -0700 (PDT)
X-Received: by 2002:a5e:9907:: with SMTP id t7mr3485607ioj.155.1620311490173;
        Thu, 06 May 2021 07:31:30 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1620311490; cv=none;
        d=google.com; s=arc-20160816;
        b=xa9Ul4fQIzvMEPz+AgxIaWeSB+AdeWU0TPDOEdw4AVLpnruoMs/B8th4zIowmFjjOv
         pUIAY53Fq/7k9PMKLYv93sbvypwRTE7AWk64gdhzQdA6+xu3VtPsCn0VABdkP1C9Fr12
         Mw7htl35TavLjenhoZKe0u/OEygodnSV/65YTAY1p9S6N4yUHkRhsJW3uPU10SQNPEjQ
         35qalFvXRg6kyJtT39c+kgjxU8MqaxEUVt2D13aNZFCy4QLOI9WYo/eloZhCJJ5ZwE+x
         nqeGjqIGvAUDZVYDv9webNfeHKZZZIhk/0DMIDwDjx8KrHbWMTJKHNrYJksJxXr3bURT
         K0xA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=yLOyofjXusDHUiwT/BjOZ2KmwPgn54yvaxA0B8zrR0Q=;
        b=VH+tec94CSu15lreRuCcGQgoNUCrYptT6mSjw73z2TE5m7gH0yZhY8fH1vocX7hrm2
         RQuMq0XRP7maT/ZqUdQDSQte77fhY5kowwMgN/CeVL0/AjTaI9PnjLb5LxfJjDtkB1t/
         gtJK4X2miMLEP/nOQf8mCX3HjEIJM3ZpCq/lWGrR+PxA/S+KFwPylP/HXRn+ZHCZUxMc
         l1K21vmkvjNTiyR5tr0s5sFtvD3TsTzixRCA3DENk/n2LqdRn76x2d+UF1ilp2s/tmFe
         2TINGxdDQeiylnfcZpM/R2rnL3wBwb5pWO2XuJ/5xp8sP+wtA5jFNwQ/4pToGk8S4U4l
         hZ2g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b="fXD3/CY/";
       spf=pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=arnd@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id o3si317645ilt.5.2021.05.06.07.31.30
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 06 May 2021 07:31:30 -0700 (PDT)
Received-SPF: pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 48C49613DA
	for <clang-built-linux@googlegroups.com>; Thu,  6 May 2021 14:31:29 +0000 (UTC)
Received: by mail-wr1-f41.google.com with SMTP id l14so5869345wrx.5
        for <clang-built-linux@googlegroups.com>; Thu, 06 May 2021 07:31:29 -0700 (PDT)
X-Received: by 2002:a5d:4452:: with SMTP id x18mr5773518wrr.286.1620311487652;
 Thu, 06 May 2021 07:31:27 -0700 (PDT)
MIME-Version: 1.0
References: <20210505211300.3174456-1-arnd@kernel.org> <87czu4slom.fsf@yhuang6-desk1.ccr.corp.intel.com>
 <CAK8P3a1SBDXqHE5FgG_WfzrcbeT6V6kg5T+xTGU8Cp_vLLdMqA@mail.gmail.com>
 <877dkcs2h8.fsf@yhuang6-desk1.ccr.corp.intel.com> <CAK8P3a3kZ9_VoKV+2eZh=WqncRqFKzRmRHUjAT9iFMtJpKzb1w@mail.gmail.com>
 <87pmy4qdb9.fsf@yhuang6-desk1.ccr.corp.intel.com>
In-Reply-To: <87pmy4qdb9.fsf@yhuang6-desk1.ccr.corp.intel.com>
From: Arnd Bergmann <arnd@kernel.org>
Date: Thu, 6 May 2021 16:30:42 +0200
X-Gmail-Original-Message-ID: <CAK8P3a36r9S_AYfp8Myf+3sfHvGVsBM36HmdoeVFi9BaNdS9Lg@mail.gmail.com>
Message-ID: <CAK8P3a36r9S_AYfp8Myf+3sfHvGVsBM36HmdoeVFi9BaNdS9Lg@mail.gmail.com>
Subject: Re: [PATCH] [v2] smp: fix smp_call_function_single_async prototype
To: "Huang, Ying" <ying.huang@intel.com>
Cc: Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, Jens Axboe <axboe@kernel.dk>, 
	Jian Cai <jiancai@google.com>, Guenter Roeck <linux@roeck-us.net>, 
	Peter Zijlstra <peterz@infradead.org>, Borislav Petkov <bp@suse.de>, Eric Dumazet <eric.dumazet@gmail.com>, 
	Juergen Gross <jgross@suse.com>, Michael Ellerman <mpe@ellerman.id.au>, 
	Thomas Gleixner <tglx@linutronix.de>, Nathan Chancellor <nathan@kernel.org>, 
	Nick Desaulniers <ndesaulniers@google.com>, Ingo Molnar <mingo@kernel.org>, 
	Frederic Weisbecker <frederic@kernel.org>, He Ying <heying24@huawei.com>, 
	Andrew Morton <akpm@linux-foundation.org>, "Paul E. McKenney" <paulmck@kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: arnd@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b="fXD3/CY/";       spf=pass
 (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted
 sender) smtp.mailfrom=arnd@kernel.org;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=kernel.org
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

On Thu, May 6, 2021 at 2:03 PM Huang, Ying <ying.huang@intel.com> wrote:
> Arnd Bergmann <arnd@kernel.org> writes:
> > On Thu, May 6, 2021 at 10:14 AM Huang, Ying <ying.huang@intel.com> wrote:
> >>
> >> We cannot avoid type cast in Linux kernel, such as container_of(), is
> >> there some difference here?
> >
> > container_of() does not cause any alignment problems. Assuming the outer
> > structure is aligned correctly, then the inner structure also is.
>
> So you think that the compiler may generate different code depends on
> the data structure alignment (8 vs. 32 here)?  I think that it doesn't
> on x86.  Do you know it does that on any architecture?  But I understand
> that this is possible at least in theory.

It probably won't generate any different code because that would be silly, but
it's also not a good idea to rely on that. In theory the compiler might e.g.
construct an offset into the structure using a bitwise-or instruction instead of
an addition if the alignment tells it that the lower bits are always zero.

        Arnd

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK8P3a36r9S_AYfp8Myf%2B3sfHvGVsBM36HmdoeVFi9BaNdS9Lg%40mail.gmail.com.
