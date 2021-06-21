Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBGFIYODAMGQE3A2ZMCQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd40.google.com (mail-io1-xd40.google.com [IPv6:2607:f8b0:4864:20::d40])
	by mail.lfdr.de (Postfix) with ESMTPS id D4C083AF3BE
	for <lists+clang-built-linux@lfdr.de>; Mon, 21 Jun 2021 20:02:01 +0200 (CEST)
Received: by mail-io1-xd40.google.com with SMTP id y14-20020a6bc80e0000b02904dc72726661sf10604842iof.2
        for <lists+clang-built-linux@lfdr.de>; Mon, 21 Jun 2021 11:02:01 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1624298520; cv=pass;
        d=google.com; s=arc-20160816;
        b=kobKG2WVcAkGkRzZld0EKAVMY2ODcfReHbu1alTjUelsRWoJ9nKMX7N1dBmBv25haz
         C/5gapqjtm1l7zb6eSAkZKCQ2Np02KElDNL89MDi3VxMv1H8bkoHLdy0tCV9lzH8T03J
         wYFoDSP5SfvTmQRYf0ky11TptQ4Dufh0c2BfHCucoIdWt9wCD5OlO2xmUJqwnQwVi6Sc
         SMfrQKHWxwnP/Tt/0fIbW+VzGMsZijkPd93t2ICKUiV109fvqsIzDJan9KGv/djN0ArO
         1nvWHFvdXF+5u42s/kZlP3HSX9jxpdGIet64CDCIX0pinhTXKu6r1Mah1DKG0oq59qy4
         ab2A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=yVlBiyDkCZnOoSWWByKCAoC4RrWDLKGBYSyShpvxOdk=;
        b=SX6qrvSxjhEQY982Uzcnh+Pbm0FrNi1jLU7ME8vnxWMHVmJ8Xeb3V1Wk63GOB9nDJx
         Q3oBxg3dKoPxItxKfSqUVs8jzapV5RyF4TryqQqo/at27MwuGOom4F5UkUKxf/JTiv27
         +sOgmLnFS4edYZKQZ0L75+c4fl86/I9lLZfkGpRO5wFSVOxw7VhenLB1B5J9I2hzHrgd
         iWAuzXtL1jl5XP7MbDmDyEORYURqB3NinJm4ZpVgYf0SAiPn9CVF9QUTria3aMmEm+tb
         fFCI8n1hXP0X0OUFKCD5J3yORZ0s8IymnTjx4vw4anIPbGYpi2UG2LjdSJeMyIZ9Cvo+
         n57Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=QODfhnKy;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=yVlBiyDkCZnOoSWWByKCAoC4RrWDLKGBYSyShpvxOdk=;
        b=J5pRBFDmvzNkk3Am1joCcirJdVhuUihahaZTJggN5hKAwtjw9hotW68a7cAKKjLX8X
         z+wQYNhJlGqT52D7pqlp+bVyL3up3ZMshGnkIjurAAekg5M2jY2wE5ZTiJS0zgSLqZZY
         xpifek+Ja+PZzgiNpupvZNgrb0kJ6u1yQKv0NLaMVdLiF+JxGHVT14OIZzpUHqmlNvpU
         QIoaO0jW3JDezcKFxuqP0fDmec1Kf8krNg/ct/bCoPmdhJH8Pg3y/ctLMheTMLu5zxiQ
         Nmjlpif0UtydEXbyzHYnDCE4OOc+MlWd4rq8gUe+ohkFsIqWMTW/8GfBvwllMcPJQV9v
         EAEA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=yVlBiyDkCZnOoSWWByKCAoC4RrWDLKGBYSyShpvxOdk=;
        b=a/DjG6PhDbqmkQYeIUggICBSCB9Q6nl7RAg6c3RtqE86gUPM+k2lwvFm+TBqjx8wbv
         Sf29fO5aDN3zEFngTTIlGTGb1tZynIyTu1A8fdp/5DfPRZ3ivyYcekMi3hFhljcUG3+g
         2EbiHqihfccTLNeCtN5zsr8ZJXVERt4YQ877Pq+KASdhl7/VlXVcbG9rLCxYVGVuyuj+
         L+wPmUgk9U/aQwHFF0QIz2YxxnCqShcOMEk2is89zPvQns3LVKDaHmmLheQ+MMRWYtmj
         wq8dOMjVFusyI+s1FMzeR3dSYA1jw+oQPHveedTHLuIURkbyHHYi9BuX2UI4FdyOte0R
         iJ0A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530kFNZmj3NBCiW8H2LjECef1KxPWwoTf4Nuihkb6+hbf4JQUSPD
	jfKz7OapuK1R0ACJUTrxNOs=
X-Google-Smtp-Source: ABdhPJzg5cKJIm/MrApuplDzyIpEb9rf7tsVwsd0FUqgBta2+r86UPXjkGzJeMSuz5HnI3jx4ymEuQ==
X-Received: by 2002:a02:5489:: with SMTP id t131mr18620457jaa.34.1624298520505;
        Mon, 21 Jun 2021 11:02:00 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a92:d811:: with SMTP id y17ls1870707ilm.1.gmail; Mon, 21 Jun
 2021 11:02:00 -0700 (PDT)
X-Received: by 2002:a92:c690:: with SMTP id o16mr5087510ilg.261.1624298520147;
        Mon, 21 Jun 2021 11:02:00 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1624298520; cv=none;
        d=google.com; s=arc-20160816;
        b=EYpvbyQoog1PxRwZxx5oAI5IMNeZDta1KB4de0DrPlB/qRljXtgYpklWSekRSFDoBj
         3AX4ASqRKNuYqFIM5PzeshY4KnZvtiLEy5bn95R5Miy4KOj5jZJ5Ho3jQVjz7zS2saGC
         r7PiHDZzBQDE2UCSLEVIAytagVwxG73LE7Rm4QOefzzR/RbLcneloXuejsOCUVMUhlWU
         XIbfWX/VC5rxMiCytkMMprMXQTgTeagWarZx0CkABSI93BvACUS+Y62XA2wISx6CqL2B
         Zg9oIy2TuSrf83uD0nD1+0ueWxKk/4L5lqsfj58VcDuZL+7J1H3B6HnEXVsLjMjHEbN4
         f9xQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=IWuvX5NZZLWmo637UvofI/7QqCp+5LMTH3eAM9xwofM=;
        b=IIsjBgVRsVq7BLa/A08xARsVovT60MqqnAwJKk0tQhwsMFp5OTAI23YnAf/SocSuM/
         gNeSmZkH126FVCGESo1F9ieXvulfXHnTDR8Ssp9p9HAoL/69zf/UG1DGpcGdvPIMsiM0
         /6EiVrybmmreTQ6xIV1bLhBRQuQw4vOj618kt9rMKLiRuC+ANKOgsmOBOjpsslvi2vYz
         ZHVsGUlJWYJXAaTy8FUGDD3X+6OHNss7eDqcEhiIKsKvzTkCXpUkAXbxwe/FQa+SPMOv
         s6Zo1oWuoonYzk1eZKn9L7W+gjUlkxbYY6sDjs+vDtvq4lDAsSnrO8Hus0jf1BTgKW3+
         6JLw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=QODfhnKy;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id 1si1210ioe.4.2021.06.21.11.02.00
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 21 Jun 2021 11:02:00 -0700 (PDT)
Received-SPF: pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 53FC560698;
	Mon, 21 Jun 2021 18:01:57 +0000 (UTC)
Date: Mon, 21 Jun 2021 11:01:54 -0700
From: Nathan Chancellor <nathan@kernel.org>
To: Michael Ellerman <mpe@ellerman.id.au>
Cc: Nicholas Piggin <npiggin@gmail.com>, Arnd Bergmann <arnd@arndb.de>,
	kernel test robot <lkp@intel.com>,
	Andrew Morton <akpm@linux-foundation.org>,
	clang-built-linux@googlegroups.com, kbuild-all@lists.01.org,
	Kees Cook <keescook@chromium.org>, linux-kernel@vger.kernel.org,
	Linux Memory Management List <linux-mm@kvack.org>,
	linuxppc-dev@lists.ozlabs.org, kvm-ppc@vger.kernel.org
Subject: Re: arch/powerpc/kvm/book3s_hv_nested.c:264:6: error: stack frame
 size of 2304 bytes in function 'kvmhv_enter_nested_guest'
Message-ID: <YNDUEoanTqvayZ5P@archlinux-ax161>
References: <202104031853.vDT0Qjqj-lkp@intel.com>
 <1624232938.d90brlmh3p.astroid@bobo.none>
 <e6167885-30e5-d149-bcde-3e9ad9f5d381@kernel.org>
 <87im273604.fsf@mpe.ellerman.id.au>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <87im273604.fsf@mpe.ellerman.id.au>
X-Original-Sender: nathan@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=QODfhnKy;       spf=pass
 (google.com: domain of nathan@kernel.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=nathan@kernel.org;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=kernel.org
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

On Mon, Jun 21, 2021 at 07:46:03PM +1000, Michael Ellerman wrote:
> Nathan Chancellor <nathan@kernel.org> writes:
> > On 6/20/2021 4:59 PM, Nicholas Piggin wrote:
> >> Excerpts from kernel test robot's message of April 3, 2021 8:47 pm:
> >>> tree:   https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git master
> >>> head:   d93a0d43e3d0ba9e19387be4dae4a8d5b175a8d7
> >>> commit: 97e4910232fa1f81e806aa60c25a0450276d99a2 linux/compiler-clang.h: define HAVE_BUILTIN_BSWAP*
> >>> date:   3 weeks ago
> >>> config: powerpc64-randconfig-r006-20210403 (attached as .config)
> >>> compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project 0fe8af94688aa03c01913c2001d6a1a911f42ce6)
> >>> reproduce (this is a W=1 build):
> >>>          wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
> >>>          chmod +x ~/bin/make.cross
> >>>          # install powerpc64 cross compiling tool for clang build
> >>>          # apt-get install binutils-powerpc64-linux-gnu
> >>>          # https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=97e4910232fa1f81e806aa60c25a0450276d99a2
> >>>          git remote add linus https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git
> >>>          git fetch --no-tags linus master
> >>>          git checkout 97e4910232fa1f81e806aa60c25a0450276d99a2
> >>>          # save the attached .config to linux build tree
> >>>          COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=powerpc64
> >>>
> >>> If you fix the issue, kindly add following tag as appropriate
> >>> Reported-by: kernel test robot <lkp@intel.com>
> >>>
> >>> All errors (new ones prefixed by >>):
> >>>
> >>>>> arch/powerpc/kvm/book3s_hv_nested.c:264:6: error: stack frame size of 2304 bytes in function 'kvmhv_enter_nested_guest' [-Werror,-Wframe-larger-than=]
> >>>     long kvmhv_enter_nested_guest(struct kvm_vcpu *vcpu)
> >>>          ^
> >>>     1 error generated.
> >>>
> >>>
> >>> vim +/kvmhv_enter_nested_guest +264 arch/powerpc/kvm/book3s_hv_nested.c
> >> 
> >> Not much changed here recently. It's not that big a concern because it's
> >> only called in the KVM ioctl path, not in any deep IO paths or anything,
> >> and doesn't recurse. Might be a bit of inlining or stack spilling put it
> >> over the edge.
> >
> > It appears to be the fact that LLVM's PowerPC backend does not emit 
> > efficient byteswap assembly:
> >
> > https://github.com/ClangBuiltLinux/linux/issues/1292
> >
> > https://bugs.llvm.org/show_bug.cgi?id=49610
> >
> >> powerpc does make it an error though, would be good to avoid that so the
> >> robot doesn't keep tripping over.
> >
> > Marking byteswap_pt_regs as 'noinline_for_stack' drastically reduces the 
> > stack usage. If that is an acceptable solution, I can send it along 
> > tomorrow.
> 
> Yeah that should be OK. Can you post the before/after disassembly when
> you post the patch?
> 
> It should just be two extra function calls, which shouldn't be enough
> overhead to be measurable.

The diff is pretty large so I have attached it here along with the full
disassembly of the files before and after the patch I am about to send.
I will reply to this message so the history is there.

Cheers,
Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/YNDUEoanTqvayZ5P%40archlinux-ax161.
