Return-Path: <clang-built-linux+bncBCYPXT7N6MFRBVN2774AKGQEB56EHTA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc3e.google.com (mail-oo1-xc3e.google.com [IPv6:2607:f8b0:4864:20::c3e])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A3A72304FA
	for <lists+clang-built-linux@lfdr.de>; Tue, 28 Jul 2020 10:09:59 +0200 (CEST)
Received: by mail-oo1-xc3e.google.com with SMTP id t20sf232469oot.7
        for <lists+clang-built-linux@lfdr.de>; Tue, 28 Jul 2020 01:09:59 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1595923797; cv=pass;
        d=google.com; s=arc-20160816;
        b=PS05+Dj7eut/J+VE9MYRCWLQF+jyYaBjaLMrKo7MFIOheacB6LxxESvYG71Szo3D5X
         v4/RljJbVqm9ZxKI2QFGrpbOa//RjG8xnqXvq2+aOBwtXowIsYXlOc2MYbQYNVrIoDYo
         2FuAvUIiWghg1IvGqWI2spLN1/HIwMIN0N6xeyrWj0cHD55dhRoCuybQMMVDIFax7gw7
         ajBgVaaRPmKeYjfpkWMrB8jtvqHq5cO9QZuEz32h0QpoObWZuML9AxffAQWy41IvwkT7
         0hYmgwsKfGRbgFYLIoEnrj1e0MXqoXA99l1r7mlM1VHpZwAwRPmOXiUpWSh75MSxBOsJ
         h0Qw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=RQmwm7q93vYfNza/EpLJsXGKHR4RkuXj+z3HpS6nsVg=;
        b=WVzbK3Dq5rx/J3QU+aqAIbLUCjHgqAI9vY9xH37Yhpg9SCxgU8ke7rYtJwrV3/bvPS
         LeZE0IQozp2MAkyB5Wa9EAkvXwaHE7LV7jJuHXDd6cP4JPCTkvPE0cA4gvt1mgvsebFA
         ReB9i7XM7NB3xfmX2oxwOORu9Kg0e6ufceLnW4c+7uhhYhczH0lOeqVRml0EaGjVqnpQ
         JFwumUoGcLPc+8GzST6+CKVe9IU2PhOKLDHWmGJo7ivsp3wb4K2bkhwLm6OpD/QycBIa
         eud5p6buFCJNIBK/aSDvinymciyvba2vcHprQO7b/nYWKADP9bZfyW2oeIqVmPW2JJF4
         FJ0Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="bNG6JL/O";
       spf=pass (google.com: domain of jcmvbkbc@gmail.com designates 2607:f8b0:4864:20::1042 as permitted sender) smtp.mailfrom=jcmvbkbc@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=RQmwm7q93vYfNza/EpLJsXGKHR4RkuXj+z3HpS6nsVg=;
        b=odZEEFfodHipJ3XCY7GSs9axxQeBnIxFQxXbjUpL1nSS5aGwILNwQeTbWquk3uNmJn
         5I8BSJVe9JNgs0P1kOaY3AApx7l22Bv6fAsQT8neVWnihdL5od/a2d6mtLFotcPgDueR
         rtfDI7forvzm+dlNIKiX0t9A2c5EsKNlzJAySTEaigvIvFMB0/VEs1nCZuvtlK+0+9+5
         cMf8lQfUQDvflUFyh3sJbBdGHIHnozj9oR+3u+6KPjGY8EJOwWzIJq4hpZhPgnzOEg+l
         0yF0s5dmAb8bWQ6oQgoKc9J2rLD3t8ilR/sSVNTCSeiX0z8YuB2QpEhZ3iEdVjUAiyfz
         sXxw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=RQmwm7q93vYfNza/EpLJsXGKHR4RkuXj+z3HpS6nsVg=;
        b=R/zT/kdZy0fDpb9gP+8tVS8fylB1wlxB1eMT8gGdI88rxFScPs6Ct/L/zDM6JAmUpd
         IDhEA6HzYASXalsEG71ugIi0Y5S50hHlFGroF80PZCqJPoAV743HymAnmg+wolL0hIt/
         R9Xt1Hl77KL7dxtsF/8kPlsknQ49cinQnVLp1bUnSeiBmuqHGrE2rJSJBfCnoYQ74OXh
         RG7ih+iZrVy9I8d8kULFSHK10eQ6cUHyYH6L3quwz5MOO9mtzdBb/3ojGkg5vLUOTwfx
         EaGpcOeN3XBvJpCv0HCUGd0enn/fp8v4SlCD93JVrj/tu1E5JE5YXP/M5hvdvB0d3yxe
         XJFg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=RQmwm7q93vYfNza/EpLJsXGKHR4RkuXj+z3HpS6nsVg=;
        b=XG+9DXk2mT2QHfqIobVZ5OUrE/BC+gkyuhIYVIYd8eWYz3fjDApqVv0rnPk2ngZcyb
         CmrwkclN8XqJZl+TsZAAnnmQkN5ykLbVLEByK6bJCHdhQp3Cypd3JH8UPYHT7QkeC/dl
         cVD/ZeaITTWy0RId4VOT7FZFHQXr+hYsEiz8e2fKXzJVgG5iIMkXVgppDB00mOKH4yO8
         SxSeGEpi/ykoBkKaikoZae/L7QOG1NCa635D8yVeYnNfeyFzlkmdRqrESTfjhED7fgZw
         OuuwYevLaVhJ+HXjH0QeAvgHf0fYkkqEIqBoH96NziNxJzNkqkbesqjXhHV/BOgpXXzW
         GPXQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531n1Xz0P5DNMjtM4qlH0ogqnbOQvttn6fgexcwtdgANwDJlsFwf
	FJZSTR6aldb24Mmm3HmLbbU=
X-Google-Smtp-Source: ABdhPJziTRhZBPUEHcy8d4FRd6OBbRS0VrCEYn6j5xRLAbX3U5gFERnHMBvlPmDdLdQwUOj4hVW2EA==
X-Received: by 2002:aca:b607:: with SMTP id g7mr2529086oif.130.1595923797852;
        Tue, 28 Jul 2020 01:09:57 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6830:1e4d:: with SMTP id e13ls3886328otj.5.gmail; Tue,
 28 Jul 2020 01:09:57 -0700 (PDT)
X-Received: by 2002:a05:6830:2143:: with SMTP id r3mr9249861otd.78.1595923797552;
        Tue, 28 Jul 2020 01:09:57 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1595923797; cv=none;
        d=google.com; s=arc-20160816;
        b=j81ULGQuguwcqEabyPUZIgkeRf19TzFbOCsh+lJhV5ObssCtzt9HYUTArIOdshTrdv
         c3M058ds3V3bxxX1IVcjcvyjNuSLzZeQikQhS41Ellb6vWK8W6J1jbIbBBwFkYceWiH+
         /yUWhSAGxzLY1LOq0m9ZCTTDAeSnt0RCIJt0BwayeECZNE6rdpF0xYaS7NDoXeX8fIam
         NStJUT7NXD54Wir3nMo34/UvLNasnsZoBBN+fAVraFZ24AJhALwRWSaOUa6gW4+C6/XZ
         Ckkr+uOXzpBdnG7BhZe98wpTIMm2O+MHxhRFrGT/933ceFF39p4z2Xf9KLAdTGInEStZ
         MT/A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=mO4UW6jhce2IwLYWJIjyNoNVa+Gr5PBQ2rV1LkhhIeA=;
        b=z5cgOnhQ/9yqEPvNHj+K4TEKNqZanIM1WrUvqxUOPilNI/UF6apulHlPtse0p1keVj
         XotL7uEB4UPihtuFthmmVlt06jx7+DIJlFd61PB8MC5qSFullzcbZPPm99xCBRJEmThv
         wsw2MsQQq6Jr9aK9bWq6DfK1r7IWzLw7QW9LmPQvqJCLWwudpQXkiR2pfFzNlBUFZ2W7
         BBhjSsZksFls2vSQjslGN7JvcqAIu/O8t3aDQrrepppRAalevPGhF1MGeMboQDQA9r0a
         +vqKYF5nlEkrCNEfmnuIpCOubRedn7jB9PYjANGbC3UgJJqgwnZnwgZz+HPtSQ3xX1YU
         3O7g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="bNG6JL/O";
       spf=pass (google.com: domain of jcmvbkbc@gmail.com designates 2607:f8b0:4864:20::1042 as permitted sender) smtp.mailfrom=jcmvbkbc@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-pj1-x1042.google.com (mail-pj1-x1042.google.com. [2607:f8b0:4864:20::1042])
        by gmr-mx.google.com with ESMTPS id i189si560152oib.0.2020.07.28.01.09.57
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 28 Jul 2020 01:09:57 -0700 (PDT)
Received-SPF: pass (google.com: domain of jcmvbkbc@gmail.com designates 2607:f8b0:4864:20::1042 as permitted sender) client-ip=2607:f8b0:4864:20::1042;
Received: by mail-pj1-x1042.google.com with SMTP id gc9so11099577pjb.2
        for <clang-built-linux@googlegroups.com>; Tue, 28 Jul 2020 01:09:57 -0700 (PDT)
X-Received: by 2002:a17:90a:8918:: with SMTP id u24mr3082134pjn.7.1595923796912;
 Tue, 28 Jul 2020 01:09:56 -0700 (PDT)
MIME-Version: 1.0
References: <20200728051153.1590-1-rppt@kernel.org> <20200728051153.1590-4-rppt@kernel.org>
In-Reply-To: <20200728051153.1590-4-rppt@kernel.org>
From: Max Filippov <jcmvbkbc@gmail.com>
Date: Tue, 28 Jul 2020 01:09:45 -0700
Message-ID: <CAMo8Bf+VKHmAm1GV=0D9Um2mpsxjnwp9WrAJq_eKW1MK+_8r6g@mail.gmail.com>
Subject: Re: [PATCH 03/15] arm, xtensa: simplify initialization of high memory pages
To: Mike Rapoport <rppt@kernel.org>
Cc: Andrew Morton <akpm@linux-foundation.org>, Andy Lutomirski <luto@kernel.org>, 
	Benjamin Herrenschmidt <benh@kernel.crashing.org>, Borislav Petkov <bp@alien8.de>, 
	Catalin Marinas <catalin.marinas@arm.com>, Christoph Hellwig <hch@lst.de>, 
	Dave Hansen <dave.hansen@linux.intel.com>, Ingo Molnar <mingo@redhat.com>, 
	Marek Szyprowski <m.szyprowski@samsung.com>, Michael Ellerman <mpe@ellerman.id.au>, 
	Michal Simek <monstr@monstr.eu>, Mike Rapoport <rppt@linux.ibm.com>, 
	Palmer Dabbelt <palmer@dabbelt.com>, Paul Mackerras <paulus@samba.org>, 
	Paul Walmsley <paul.walmsley@sifive.com>, Peter Zijlstra <peterz@infradead.org>, 
	Russell King <linux@armlinux.org.uk>, Stafford Horne <shorne@gmail.com>, 
	Thomas Gleixner <tglx@linutronix.de>, Will Deacon <will@kernel.org>, 
	Yoshinori Sato <ysato@users.sourceforge.jp>, clang-built-linux@googlegroups.com, 
	iommu@lists.linux-foundation.org, linux-arm-kernel@lists.infradead.org, 
	linux-c6x-dev@linux-c6x.org, LKML <linux-kernel@vger.kernel.org>, 
	linux-mips@vger.kernel.org, Linux Memory Management List <linux-mm@kvack.org>, 
	linux-riscv@lists.infradead.org, linux-s390 <linux-s390@vger.kernel.org>, 
	"open list:SUPERH" <linux-sh@vger.kernel.org>, 
	"open list:TENSILICA XTENSA PORT (xtensa)" <linux-xtensa@linux-xtensa.org>, linuxppc-dev@lists.ozlabs.org, 
	openrisc@lists.librecores.org, 
	"open list:SPARC + UltraSPAR..." <sparclinux@vger.kernel.org>, 
	"moderated list:H8/300 ARCHITECTURE" <uclinux-h8-devel@lists.sourceforge.jp>, 
	"maintainer:X86 ARCHITECTURE..." <x86@kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: jcmvbkbc@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b="bNG6JL/O";       spf=pass
 (google.com: domain of jcmvbkbc@gmail.com designates 2607:f8b0:4864:20::1042
 as permitted sender) smtp.mailfrom=jcmvbkbc@gmail.com;       dmarc=pass
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

On Mon, Jul 27, 2020 at 10:12 PM Mike Rapoport <rppt@kernel.org> wrote:
>
> From: Mike Rapoport <rppt@linux.ibm.com>
>
> The function free_highpages() in both arm and xtensa essentially open-code
> for_each_free_mem_range() loop to detect high memory pages that were not
> reserved and that should be initialized and passed to the buddy allocator.
>
> Replace open-coded implementation of for_each_free_mem_range() with usage
> of memblock API to simplify the code.
>
> Signed-off-by: Mike Rapoport <rppt@linux.ibm.com>
> ---
>  arch/arm/mm/init.c    | 48 +++++++------------------------------
>  arch/xtensa/mm/init.c | 55 ++++++++-----------------------------------
>  2 files changed, 18 insertions(+), 85 deletions(-)

For the xtensa part:
Reviewed-by: Max Filippov <jcmvbkbc@gmail.com>
Tested-by: Max Filippov <jcmvbkbc@gmail.com>

-- 
Thanks.
-- Max

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAMo8Bf%2BVKHmAm1GV%3D0D9Um2mpsxjnwp9WrAJq_eKW1MK%2B_8r6g%40mail.gmail.com.
