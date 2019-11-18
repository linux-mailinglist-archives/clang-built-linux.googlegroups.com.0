Return-Path: <clang-built-linux+bncBDYJPJO25UGBB7OHZPXAKGQEQ5HRL7A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103e.google.com (mail-pj1-x103e.google.com [IPv6:2607:f8b0:4864:20::103e])
	by mail.lfdr.de (Postfix) with ESMTPS id D00E0100B85
	for <lists+clang-built-linux@lfdr.de>; Mon, 18 Nov 2019 19:33:34 +0100 (CET)
Received: by mail-pj1-x103e.google.com with SMTP id fh1sf710830pjb.5
        for <lists+clang-built-linux@lfdr.de>; Mon, 18 Nov 2019 10:33:34 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1574102013; cv=pass;
        d=google.com; s=arc-20160816;
        b=sdmrb5cBave7Btk3e3GxBCWhX5x/6o0bT62Yo71yDqE4J991tNHYG+KdsDxrIIY8jf
         aMM5qiybndxzJIFWSTDQTBqb3VFXEALfVAXuGszOl1ri/mH4lbKi1Ioro8S73h/OKgH8
         IE4rmsIsvofmLR+wLs0UlHvMDr/PbWrDDzYq0iJy+K4+yK6Ba3bvEK/jGcgsLIUcSavz
         guWdhB2FFu5sBRmFUgYM7v8sowB0B9lbCeeyhzooh6nSQmowGLuaD9o9g6FhZHwvMoIo
         //vtzV+5tKAOpnIAebYDn392UTwynxBBC6rWSBeMR2N+fjIp1AVQ6NhB8gHcwFln7AAO
         k0+A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=IRuBFB/DHtmEZKgUBwViw4AsoAKyC/i5kHq8S7mJRMU=;
        b=XX0vDiEd9/quWp5tXUtD3UDkQd+PtUbjO7AV//EKrO8WCtRifLeCq+a/GfqsOojdqv
         jcR/tnCge+qRgYtyJ10r3lceBuyCtWFHw8eBbf56vuhWyjbaPEhdiaSHRmHHsKoGnvAN
         ++14DB4Ik7f60tF1vpmCcZ8JMe3DRnvR9IuhywOY5Vcj9lqzAgOB8AcY9R4owAS9Y2cw
         FA+l+4UluCa6/IwUKtRiQmDWhWkeuf3aWJytKIthgMC8RjMHeNTHJSqvKdm3RDibQizW
         gL6KfkUltm7j6XEvpryE49pRDu5ulkG0MUjlZEQs977zG3DcAfL9cLf+AHcbNUzLXG9I
         J8JQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=v7wQdSVJ;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=IRuBFB/DHtmEZKgUBwViw4AsoAKyC/i5kHq8S7mJRMU=;
        b=TDTxjEfWP6xlNy9qqEtw6IcA1wvnPoqU79duoh42sWwpSrO4bxxPz/5ZmmoKAA83bZ
         pe+kEGJe4ZjQ9k/+2gmz3dtgXpXT7Z6mQ2T6FGJQ2v81fTN4tfhTiBD9ZVfKxrn/HS/Q
         h54OahssI6wFloARf8D71pNHw6Deezps2U+nj3zalFUfY1BlOXyJhiWOpNMQZANkQbQz
         4ZD6WiXjEHQGM3FBtxEaB5cXFYtZNRHfIGHVWB1T+DuuY6vSAZQ9/U7MxMD9+DEOrr2M
         pw2d+SbnQroi+Uu3pCxPw/O84YGiiPt6k2DV+NNnWnfC9B7r6jTgeVI/9v/nVnY7vTuF
         I3dw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=IRuBFB/DHtmEZKgUBwViw4AsoAKyC/i5kHq8S7mJRMU=;
        b=ULG08+rDdsz/gPovRHdJzKHM99LW7678eEDxehCH+nwU7n/wIP7v1xe/55WfRf89ZW
         x1UWRnzgNYmHbhyjvigCVT9EC/VkefMM2OEU+6z6W82T7JSOwkNpbtCqZFM2hBhCZ2wb
         7BWSL4hcYqwgC9wtW89hKh1tN8hLlJ8NUNVD8UWFTEg2Na/k1thlRUG2FXMsnkqlKNUR
         cTiadHRJck6txlNR6Xj9D8E63AoH2/r/82Nm8BmF4z76Hino1MhHKjvA4wZeXpnArkGX
         8hj2U4LG0Oyn/GveFDoTSVvQGC0VWdxcU4CIPS0cXQN7RfknMstGuQpF/vwhIQJVBx6I
         fr4A==
X-Gm-Message-State: APjAAAUtG8kCwoaCThV26J1x2LKrugX9rgxhUvXUDilcPtxwPRC5zbS6
	e76Xxul49eoh68nlUGSHUzw=
X-Google-Smtp-Source: APXvYqzTi0v/pcHrwwqW8YZQ9mH2Q5M1t+v9mDMB7AyYxmgfyDGNED8VX4IsghcEm0UG6AvQ3vYuXg==
X-Received: by 2002:a17:902:bd82:: with SMTP id q2mr31217378pls.106.1574102013175;
        Mon, 18 Nov 2019 10:33:33 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a65:4342:: with SMTP id k2ls4005290pgq.6.gmail; Mon, 18 Nov
 2019 10:33:32 -0800 (PST)
X-Received: by 2002:a63:6286:: with SMTP id w128mr766487pgb.290.1574102012720;
        Mon, 18 Nov 2019 10:33:32 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1574102012; cv=none;
        d=google.com; s=arc-20160816;
        b=VVeEMx4z68F1EDVavfFy6xx8O3LIwuNV4VhfzSSWu8wB/+sk2xKEL4sLNiIZFraeRd
         jdMZllmz7GbVwbyR0mD/cYQBF8BE6KDFQsfdjgm7O9BXXbLc9F4V3yBvQj57niLgiRJ+
         kMbM2U87CdC/PoGSQehnfQVJlBjAIf3a3X5tHu1sytMeWhemQv2jzufmJmBuiFau0MmO
         5GP83zhpQGCoMSLcUWqI9hCqU4lYpL0MX9jF0JvpoajrUyCyAVGbEtD4a1ywN5lzOBnx
         hIrKN36DlXGl1G2hzg0lsQCG3MfF3PawCKpfSCEPRHVEYkl38u4zKWrkeFJpO4Es3SoA
         B/CA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=yfptAgxO0ZqHRDAtd94D39Km6mZo+knIvg5+CXVEvLw=;
        b=wNHIo93k9hpqi86/wfncM5Cbv1VD2YHIq2kBQsHXq+1DvVoLKu6k7rryQUEfVlf238
         jyihayyMjcFUbmj/quyeef6ZyOwEv0MFqXSMO2FXPlm3G6ZqnBg8yUAfq7S8mVxkVZxh
         8yU1IyqUm7oiR9LRprVc4015Lroloo1Qfu+JPGpwJbvkg1GoL7fdgc+avPf/d3yvgvPf
         fn32lnmTmTSNpqxKVpq0kM+eUv5SYVau2xuTFZy6v+68+Q6rokYUXUj1N1ngo7263DVV
         oTtK6CT9J3zWfBh7xeFPBVb/i6MrcVZbSo2/ORwsN9Oultw56deWWKpGJ7uYnP5HfD+E
         Qq0Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=v7wQdSVJ;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x544.google.com (mail-pg1-x544.google.com. [2607:f8b0:4864:20::544])
        by gmr-mx.google.com with ESMTPS id l7si10855pjy.0.2019.11.18.10.33.32
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 18 Nov 2019 10:33:32 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::544 as permitted sender) client-ip=2607:f8b0:4864:20::544;
Received: by mail-pg1-x544.google.com with SMTP id e6so2055784pgi.11
        for <clang-built-linux@googlegroups.com>; Mon, 18 Nov 2019 10:33:32 -0800 (PST)
X-Received: by 2002:a65:590f:: with SMTP id f15mr701872pgu.381.1574102011988;
 Mon, 18 Nov 2019 10:33:31 -0800 (PST)
MIME-Version: 1.0
References: <201911160531.VrqGMTij%lkp@intel.com> <CAKwvOdk70dd5F7JjZW5oNaSkQKh8_3P9D8VJ7aPpgx1vYw8Uog@mail.gmail.com>
 <20191118182806.GB372119@cmpxchg.org>
In-Reply-To: <20191118182806.GB372119@cmpxchg.org>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 18 Nov 2019 10:33:20 -0800
Message-ID: <CAKwvOdnyJXKxeqvt+x+hfxwdGwxpEhcX9+p4h7pF9HVgMw8ruA@mail.gmail.com>
Subject: Re: [linux-next:master 11878/12136] mm/vmscan.c:2216:39: warning:
 implicit conversion from enumeration type 'enum lru_list' to different
 enumeration type 'enum node_stat_item'
To: Johannes Weiner <hannes@cmpxchg.org>
Cc: kbuild@lists.01.org, 
	clang-built-linux <clang-built-linux@googlegroups.com>, kbuild-all@lists.01.org, 
	kbuild test robot <lkp@intel.com>, Suren Baghdasaryan <surenb@google.com>, 
	Andrew Morton <akpm@linux-foundation.org>, 
	Linux Memory Management List <linux-mm@kvack.org>, Qian Cai <cai@lca.pw>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=v7wQdSVJ;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::544
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

On Mon, Nov 18, 2019 at 10:28 AM Johannes Weiner <hannes@cmpxchg.org> wrote:
>
> Hello Nick,
>
> On Mon, Nov 18, 2019 at 10:19:52AM -0800, Nick Desaulniers wrote:
> > Hi Johannes,
> > Below is a 0day report from a build with Clang, can you please take a look?
> >
> > On Fri, Nov 15, 2019 at 1:44 PM kbuild test robot <lkp@intel.com> wrote:
> > >
> > > CC: kbuild-all@lists.01.org
> > > TO: Johannes Weiner <hannes@cmpxchg.org>
> > > CC: Suren Baghdasaryan <surenb@google.com>
> > > CC: Andrew Morton <akpm@linux-foundation.org>
> > > CC: Linux Memory Management List <linux-mm@kvack.org>
> > >
> > > tree:   https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git master
> > > head:   5a6fcbeabe3e20459ed8504690b2515dacc5246f
> > > commit: 07976d367592d6613370c93706795b4ebc0850f1 [11878/12136] mm: vmscan: enforce inactive:active ratio at the reclaim root
> > > config: arm64-defconfig (attached as .config)
> > > compiler: clang version 10.0.0 (git://gitmirror/llvm_project f7e9d81a8e222f3c9d4f57e0817f19bbb795e5b6)
> > > reproduce:
> > >         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
> > >         chmod +x ~/bin/make.cross
> > >         git checkout 07976d367592d6613370c93706795b4ebc0850f1
> > >         # save the attached .config to linux build tree
> > >         make.cross ARCH=arm64
> > >
> > > If you fix the issue, kindly add following tag
> > > Reported-by: kbuild test robot <lkp@intel.com>
> > >
> > > All warnings (new ones prefixed by >>):
> > >
> > > >> mm/vmscan.c:2216:39: warning: implicit conversion from enumeration type 'enum lru_list' to different enumeration type 'enum node_stat_item' [-Wenum-conversion]
> > >            inactive = lruvec_page_state(lruvec, inactive_lru);
> > >                       ~~~~~~~~~~~~~~~~~         ^~~~~~~~~~~~
> > >    mm/vmscan.c:2217:37: warning: implicit conversion from enumeration type 'enum lru_list' to different enumeration type 'enum node_stat_item' [-Wenum-conversion]
> > >            active = lruvec_page_state(lruvec, active_lru);
> > >                     ~~~~~~~~~~~~~~~~~         ^~~~~~~~~~
> > >    mm/vmscan.c:2746:42: warning: implicit conversion from enumeration type 'enum lru_list' to different enumeration type 'enum node_stat_item' [-Wenum-conversion]
> > >            file = lruvec_page_state(target_lruvec, LRU_INACTIVE_FILE);
> > >                   ~~~~~~~~~~~~~~~~~                ^~~~~~~~~~~~~~~~~
>
> A fix for this has been sent out and should make its way into into -next soon:
> https://lore.kernel.org/linux-mm/1573848697-29262-1-git-send-email-cai@lca.pw/

Great, thank you, and sorry for the noise.
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdnyJXKxeqvt%2Bx%2BhfxwdGwxpEhcX9%2Bp4h7pF9HVgMw8ruA%40mail.gmail.com.
