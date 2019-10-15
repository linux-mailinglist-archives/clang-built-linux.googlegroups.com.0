Return-Path: <clang-built-linux+bncBCIO53XE7YHBBAOXTDWQKGQEFUCXPMI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43f.google.com (mail-pf1-x43f.google.com [IPv6:2607:f8b0:4864:20::43f])
	by mail.lfdr.de (Postfix) with ESMTPS id E0763D80F4
	for <lists+clang-built-linux@lfdr.de>; Tue, 15 Oct 2019 22:26:43 +0200 (CEST)
Received: by mail-pf1-x43f.google.com with SMTP id u21sf13932876pfm.22
        for <lists+clang-built-linux@lfdr.de>; Tue, 15 Oct 2019 13:26:43 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1571171202; cv=pass;
        d=google.com; s=arc-20160816;
        b=DLR9uF4zjCqrAwisR6SnKURoinkjqX7dhlCwUkCkRAYFj6loqSr6grtETwpEPG1ouo
         nS9MlIFR7QRJbjTT3cN4lDzybdAowoVIQCdjI1BLYhynnD2HtEupYs/1spTEL6WhHxEB
         SdvstHC+quVe6bpFwDvBXm6eXLub8dNFAswgyY8Brqt1EPizEFlFWbuS7NLNIP06C21w
         FHLsN+GOamsIWcml4XV1eH/rWSDvlze8+Sxve5pukEQgmIbsMFonYAXzVZJaxrGv6HYF
         1mDEB6H1oJq8ovazDlqZKrz1evA1SXBMqYLf9rbou6lKBOlX6ORWyhtD8bBv4+d/+QsW
         1opw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:date:from:sender:dkim-signature;
        bh=uiyH7bwgJcJb/2PlUakTmwJ791hQwSsbxXopB3SFrKM=;
        b=nlrWsipbErn3N1EMReJ9ENzzbSapksmZwqEdPdssBRPlr/VJCgBQTXbZlhH0wyHCmZ
         v09DbGwCGpgCsZXNs7JJQWbtoqX7bnRXo7dqzHCoknHQNn8oQTtUNnX+IDxEyo23+VPa
         gC2NyNZBR+1NY7SUCicxBKeUBTDphYXWtjun3kgfHCCk76q9BBgXRnvfPLlPV+1LmM/3
         /8dmv4SJHfvcCMHWwCmthLL9uF+dgDsdo/CdQz8FrJR8a4xmWLsCusFS6INhIrjfa0zt
         4jl2lI4SyBw4mP+ehxkNbJel1d8lACqd4yFZ4IRUBqY/DoWmD3RcOXF3kAz6FK9Rn0Gh
         DVRA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=RNSQmhS1;
       spf=pass (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::834 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=sender:from:date:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=uiyH7bwgJcJb/2PlUakTmwJ791hQwSsbxXopB3SFrKM=;
        b=g1fz7YT7CHjkRzkFnWuaO2JpfVBkVa5G+1mpLCnJAuAO8DttysKiAON/MDOJRq3Rvq
         GglHb2YjY7ZbAOSTdkeJ51s+RAhf1WjCJlnrP/Nj/6j/IuQ41xHn7rHd05VIXwM3MTsV
         BULMW6vfY+lUNIGgD8OhNRi2tEesjMINRYC05sZrkprzUmWNXqvWFkA4/FeLdqD6rz9b
         Jib21B88pVwUfJX6e+h8MigBahKJL4U+SA8NmmNsgoUcDfAqf2MLVnKXfOgTGbdMY7tE
         5F6iBoIoNJUSBKkgYxqK2AsMWD3VQrZk4zAspkgPo+riHug9ESWkM7O4zSWTXBKZRXbd
         Jt7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:from:date:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=uiyH7bwgJcJb/2PlUakTmwJ791hQwSsbxXopB3SFrKM=;
        b=SsXGEexesCrsz3T5QzZNVfhSZEtBOU7110BkyKdEtAPa/MWGdSTQy4BCyXAlj/dCok
         Fl6AabNW9wXA0qKF1ix2f2ufuiWwsTLzBOS/YvVu2IefyQNBf3aQpqbpxSFfZWUo2Pc6
         N9tT3nZuvsqBKSH2hmrhGfifLH/gATT1XDW62s+CPSghx0Q0lGM+MIocwiBiCH2DLH/p
         Hlg+ooehBmf7Vs+O6JfFUY/zA4B75RDhngMEEnbLflv95OPXVHcAbBty48BVlM8yFgIf
         bF39Cz5ViT+v+COLL5mZJfQZDmEQifrIyv7OmC4p6rea6d6ISbM2mmFGHj7MwOH3gtBY
         Lylg==
X-Gm-Message-State: APjAAAWVxQU9lGb2Mxo2qp0ml0ob9CvXfVYotn6pOvj7kqALiM93LmWU
	kkIgcOlMMzfYF1kyhKo9+kY=
X-Google-Smtp-Source: APXvYqw0qgatnHNIMruBbQ8fdRdOSO1N5BrvWGfZvPU5p4c+aaavo28SQzamz7eU387iFnrRBwjrIg==
X-Received: by 2002:a17:90a:c684:: with SMTP id n4mr437491pjt.33.1571171201871;
        Tue, 15 Oct 2019 13:26:41 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:25e2:: with SMTP id k89ls87373pje.3.gmail; Tue, 15
 Oct 2019 13:26:41 -0700 (PDT)
X-Received: by 2002:a17:90a:b946:: with SMTP id f6mr409675pjw.81.1571171201460;
        Tue, 15 Oct 2019 13:26:41 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1571171201; cv=none;
        d=google.com; s=arc-20160816;
        b=wc8SwaDfCXS1y+HY1Fznt75ybXAbzRtgjAtJ+x7a1485T7bmwGBnkGJ/htJWXo2xBK
         hSWmhkV/mki/WBJ1GakDLnqa46u7TnSAUj9jZxDeiE/9VJWQbPAGF5afjBbRg8i6k4Hz
         dTmP/A1wW3BMDzosJh6ZEwAOIf8i4Db1uR9NctmGLDT4vGB+Ge4htB5iNhUrXzyUY2ww
         I7iuT7pvb6u999PDjwcDFEtoT9wL69KXzkVhC6EjyKcTwxAj61P9rr7Tx+ucy2b+D13w
         E1orutRRNMxhfb2zA5/X9F65kwb+BoEJOJ8pZHblg5GF4TIODn8bbCj4Rk1buJ726RyW
         K1NA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:date:from:sender:dkim-signature;
        bh=GvhT2QXQ0GgfNEOJ+UXo4IMteX3tSISiPGXC9WqcO04=;
        b=orA42p4Mm38WzZ18h/yvwrFhGUkvhkZVcBNXmdQdrhPPnHVhafbwZIvk+54tayQ7Bj
         r48LzG2M9Rx6+dcc+kn/Ik1kyStNzbvJ56DdqbzvoApL4/DR8HTxT6+kowAmJ7y8G5ag
         xaNr0xW3LayCrP3QX8DMYIqvc8AyvXJgxXwD69z5sdzrRorUNvxI7lC5uGgl8abBBqaZ
         WWQKAQ8QfbSxmHe4/+t+Y/ZyiGAQjd+2qrBYDTQrgkP7zskpTL7CNPT+qTsIhR0SfiPx
         56nAHa0Jb+3YOfOKHW1t+3v7FNrlOTIjI0xWVd5r5wOcLjun2UNYgN1SHS4rJ0gCsTEz
         1Y/A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=RNSQmhS1;
       spf=pass (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::834 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
Received: from mail-qt1-x834.google.com (mail-qt1-x834.google.com. [2607:f8b0:4864:20::834])
        by gmr-mx.google.com with ESMTPS id d5si2103803pls.5.2019.10.15.13.26.41
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 15 Oct 2019 13:26:41 -0700 (PDT)
Received-SPF: pass (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::834 as permitted sender) client-ip=2607:f8b0:4864:20::834;
Received: by mail-qt1-x834.google.com with SMTP id n17so13215673qtr.4
        for <clang-built-linux@googlegroups.com>; Tue, 15 Oct 2019 13:26:41 -0700 (PDT)
X-Received: by 2002:ac8:6a06:: with SMTP id t6mr18025686qtr.169.1571171200885;
        Tue, 15 Oct 2019 13:26:40 -0700 (PDT)
Received: from rani ([2001:470:1f07:5f3:9e5c:8eff:fe50:ac29])
        by smtp.gmail.com with ESMTPSA id u43sm12322018qte.19.2019.10.15.13.26.40
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 15 Oct 2019 13:26:40 -0700 (PDT)
Sender: Arvind Sankar <niveditas98@gmail.com>
From: Arvind Sankar <nivedita@alum.mit.edu>
Date: Tue, 15 Oct 2019 16:26:38 -0400
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Arnd Bergmann <arnd@arndb.de>, "S, Shirish" <sshankar@amd.com>,
	"Wentland, Harry" <Harry.Wentland@amd.com>,
	"Deucher, Alexander" <Alexander.Deucher@amd.com>,
	"yshuiv7@gmail.com" <yshuiv7@gmail.com>,
	"andrew.cooper3@citrix.com" <andrew.cooper3@citrix.com>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Matthias Kaehlcke <mka@google.com>,
	"S, Shirish" <Shirish.S@amd.com>,
	"Zhou, David(ChunMing)" <David1.Zhou@amd.com>,
	"Koenig, Christian" <Christian.Koenig@amd.com>,
	amd-gfx list <amd-gfx@lists.freedesktop.org>,
	LKML <linux-kernel@vger.kernel.org>
Subject: Re: AMDGPU and 16B stack alignment
Message-ID: <20191015202636.GA1671072@rani>
References: <CAKwvOdnDVe-dahZGnRtzMrx-AH_C+2Lf20qjFQHNtn9xh=Okzw@mail.gmail.com>
 <9e4d6378-5032-8521-13a9-d9d9519d07de@amd.com>
 <CAK8P3a3_Q15hKT=gyupb0FrPX1xV3tEBpVaYy1LF0kMUj2u8hw@mail.gmail.com>
 <CAKwvOdnLxm_tZ_qR1D-BE64Z3QaMC2h79ooobdRVAzmCD_2_Sg@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAKwvOdnLxm_tZ_qR1D-BE64Z3QaMC2h79ooobdRVAzmCD_2_Sg@mail.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: nivedita@alum.mit.edu
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=RNSQmhS1;       spf=pass
 (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::834
 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
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

On Tue, Oct 15, 2019 at 11:05:56AM -0700, Nick Desaulniers wrote:
> Hmmm...I would have liked to remove it outright, as it is an ABI
> mismatch that is likely to result in instability and non-fun-to-debug
> runtime issues in the future.  I suspect my patch does work for GCC
> 7.1+.  The question is: Do we want to either:
> 1. mark AMDGPU broken for GCC < 7.1, or
> 2. continue supporting it via stack alignment mismatch?
> 
> 2 is brittle, and may break at any point in the future, but if it's
> working for someone it does make me feel bad to outright disable it.
> What I'd image 2 looks like is (psuedo code in a Makefile):
> 
> if CC_IS_GCC && GCC_VERSION < 7.1:
>   set stack alignment to 16B and hope for the best
> 
> So my diff would be amended to keep the stack alignment flags, but
> only to support GCC < 7.1.  And that assumes my change compiles with
> GCC 7.1+. (Looks like it does for me locally with GCC 8.3, but I would
> feel even more confident if someone with hardware to test on and GCC
> 7.1+ could boot test).
> -- 
> Thanks,
> ~Nick Desaulniers

If we do keep it, would adding -mstackrealign make it more robust?
That's simple and will only add the alignment to functions that require
16-byte alignment (at least on gcc).

Alternative is to use
__attribute__((force_align_arg_pointer)) on functions that might be
called from 8-byte-aligned code.

It looks like -mstackrealign should work from gcc 5.3 onwards.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191015202636.GA1671072%40rani.
