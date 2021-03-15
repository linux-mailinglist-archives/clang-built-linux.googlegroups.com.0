Return-Path: <clang-built-linux+bncBCUJ7YGL3QFBBPGIXSBAMGQERI3IFKQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x437.google.com (mail-pf1-x437.google.com [IPv6:2607:f8b0:4864:20::437])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A39A33AE32
	for <lists+clang-built-linux@lfdr.de>; Mon, 15 Mar 2021 10:09:18 +0100 (CET)
Received: by mail-pf1-x437.google.com with SMTP id u68sf12859985pfb.7
        for <lists+clang-built-linux@lfdr.de>; Mon, 15 Mar 2021 02:09:17 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1615799356; cv=pass;
        d=google.com; s=arc-20160816;
        b=xXx8PfYTOdEypLjFkNwOqydvAXs//gWIHY0yRggxhaBp021jgO21peIn0Py+X17t6o
         lwL5uJf1YRRZiVng55qD46XDiugj3HBwardbQ1wW1CdmXhJSq92/4RvG4EcQrjjtXElG
         +sVAxYli6gBKxUAjs6vyaNnCjhs1H23HsmSV1NtYiw5owoiQIHi8CHiP8kL6NP9l3+tD
         /4Lrg1qB0ht++iZKxUW4bs9Cl6ZntdrfJUO4OmoXCNxWI0U34wKx6EOoSW4cvp5vP6bX
         tSgXHikMMgx+HMFl+gTgam6n6tSbabpKqp3F2V0yAw6YTOEXOQ8OlhSyKNc+itcWz6lB
         mYKw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=m6Jog7ofe83GvmECGzLWrcTiEBsjOS6hidnPwXGauF0=;
        b=iSxQNL760/ntGMglFXPKaMeH2zOxg40JgOU2K/qH8Tcih12TYBKaaplJKNqqmyVExp
         rqQR6PrY8Id0h4MACVmv4GWhvAPEZWCZP7a/Ta2VGaLwBl5r385qexH8jKuJsEsaLfRM
         GVChHm064ZYNzCSwpM+ZfrHRtd6z6BLZC5N6QfolQ874V3Pk3E++l7DoCyxgkCWlFNSv
         QPXrnlKrHq3PFziUzaEOkJlxKVi6N6YzIRjufvZrYKa4qOr6w9f/fbKDUV3B4QyQkYys
         ta3472hEeclne0eaOOds/6fCcztlLzxuz5Pw+rEsbGoEMGBCeVIbT7qGtvaeimrq++Lo
         xAVw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=luZYfcji;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=m6Jog7ofe83GvmECGzLWrcTiEBsjOS6hidnPwXGauF0=;
        b=GR4q0ykSnp8mcHBrNp0qnB5AYp0OdyVkiDwIpQISql8zopBAF0M3EtGiewndl2Xhmt
         rnKf9j/UYWEzFPUMaGaDW5nQUlSSC0c8lRn7Db1YosePDGcsxk0S3oRGJaf6xL2t66LL
         LY96tbahZBvcOyFaevyIeu+aAm3/6jVb+uvWbRrtccLsb8vjnsF4VO0eCWq4cL5ZAF2K
         bMHvC3ZqJAtEGrN1rw6qNegE8x7D+H03Wh+ocjjy5TjtgKsCdi+aEVZBs9kzzGJl3+BB
         PzpdakljJ+qDkHcya3y/v+5gj29XUrzKUJjqM6PTvGSrWo8qIKPr0ysxXB0FRN/LTUnI
         GDgA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=m6Jog7ofe83GvmECGzLWrcTiEBsjOS6hidnPwXGauF0=;
        b=OxGsskEqU/gLmLFRWIBcvkhMvXeEjYbEjD2QbINLNc2/mJGkcFeNLrMACRQgtgU6g/
         gcFBJkMYZD+83lkTzryInRTSLAHzTWqCH8VhzhLx2Nw5oVM1CxHAvqUjrQnf3zjkwisi
         F+5wvUvfO1N4nNNqdlX8QwkD34uGbhSzd97Yt38/miNopY6EYNWNXCv79yXXUuHRp97T
         uNc1b0ikeNxU73UmRU0SypxRc+x6qfRQSzKk/bnykhRSJXd87uGF0U0tfhQq+aXaj3QP
         KoMo7DBJpLnX/jxe9zSHN8I5FRRdKYtMNArRnTHk2P2JzbcGoAvjOijSscU64N/wMaaJ
         5plw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5308nFt+/Kx+fi66kQxtxG1Mg8SYsPGcvACWm9RilPHQ1ArEvChL
	rwWg/ZxEEaiwBSpGgJZEeKM=
X-Google-Smtp-Source: ABdhPJzmTTkSKGZHxtSnnE7p6S6971i2rvT253htxcXFdUfh6GiJoQjcrNuei/y4fPAXDv6KgxnblQ==
X-Received: by 2002:a17:902:848e:b029:e4:b10f:3cc7 with SMTP id c14-20020a170902848eb02900e4b10f3cc7mr11377500plo.2.1615799356383;
        Mon, 15 Mar 2021 02:09:16 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:1914:: with SMTP id z20ls6065652pgl.0.gmail; Mon, 15 Mar
 2021 02:09:15 -0700 (PDT)
X-Received: by 2002:aa7:9431:0:b029:1f1:52fd:5444 with SMTP id y17-20020aa794310000b02901f152fd5444mr9301539pfo.47.1615799355862;
        Mon, 15 Mar 2021 02:09:15 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1615799355; cv=none;
        d=google.com; s=arc-20160816;
        b=GVj95zCMbAsk66H8I2ow2m6MMVJZGruqQEEqDw6VaUuFpLZalUw/BvrlsP6mrWyhCG
         xP87LiyJH0sG6IBP20o4pcxNSgyjaFzRjffsuHSUxeO4N2J5lgZI0RwGXSaG9+HnzrCk
         kzm2ufxtn+/Xdj57gtDAo3ZRx+FvsolMGb7RGxaewVmPg5ttg6rZx2/f0srMLAP9BWnC
         6ZhSmwrXW3+EeriZQ8vWxgPntsQTma4BnJKIYdyyjCG/NrTqvi4NWwYoveyakyBKTtZR
         CDuTnePbhqhEHcepCCU7p1k3GweIzhiuHeXzrIV4ylc70vAUoAC3okUAc+qRpKmA7EKH
         jg8A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=sQzMFTOdJ5QD3/tZKmDFkMD/fDzq2Z8cxnr3hgjrnrY=;
        b=PDcXoGQdMrIN7MnFtGfdKQzdJChFSv5UMXBPWR7dMhf2q7PzTnl7JmHOhsuOODkZ1Y
         XTFBPDtfVH04iLLFuSramvJGv03KAv/CKjIMP9My+838chhnWiqM1Gi+3BQoiDPbbV+2
         eK7WN43L3GOlEmDAQovqwMFJwJ362a4PH+BsjJ6/41olssMdPiSVFqs1i3LKYEcygxkS
         Bi+2h/oU2ToLYN9pK2s9meU9fvODibq8dnnTuFDW93+6S2uNtFBb6emyJzwofvek6w36
         oFBewa/QJLrgWmjIGv/+7REiQUyz5bPurBJ27Vm25zIP0FWetByrm3PIJW371PtDomRR
         ftTw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=luZYfcji;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id z16si875214pju.0.2021.03.15.02.09.15
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 15 Mar 2021 02:09:15 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id BB25261481;
	Mon, 15 Mar 2021 09:09:14 +0000 (UTC)
Date: Mon, 15 Mar 2021 10:08:49 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Sasha Levin <sashal@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>
Cc: "# 3.4.x" <stable@vger.kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Jian Cai <jiancai@google.com>, Ard Biesheuvel <ardb@kernel.org>,
	Stefan Agner <stefan@agner.ch>,
	Catalin Marinas <catalin.marinas@arm.com>,
	Sami Tolvanen <samitolvanen@google.com>, candle.sun@unisoc.com,
	Miles Chen =?utf-8?B?KOmZs+awkeaouik=?= <miles.chen@mediatek.com>,
	Stephen Hines <srhines@google.com>,
	Luis Lozano <llozano@google.com>,
	Sandeep Patil <sspatil@google.com>
Subject: Re: ARCH=arm LLVM_IAS=1 patches for 5.10, 5.4, and 4.19
Message-ID: <YE8kIbyWKSojC1SV@kroah.com>
References: <CAKwvOdka=y54W=ssgCZRgr2B+NaYFHF07KnnNDfrwv79-geSQw@mail.gmail.com>
 <YEs+iaQzEQYNgXcw@kroah.com>
 <CAKwvOd=xr5je726djQeMMrZAuNcJpX9=R-X19epVy85cjbNbqw@mail.gmail.com>
 <YEw6i39k6hqZJS8+@sashalap>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <YEw6i39k6hqZJS8+@sashalap>
X-Original-Sender: gregkh@linuxfoundation.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linuxfoundation.org header.s=korg header.b=luZYfcji;       spf=pass
 (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
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

On Fri, Mar 12, 2021 at 11:07:39PM -0500, Sasha Levin wrote:
> On Fri, Mar 12, 2021 at 09:28:56AM -0800, Nick Desaulniers wrote:
> > My mistake, meant to lop those last two commits off of 4.19.y, they
> > were the ones I referred to earlier working their way through the ARM
> > maintainers tree.  Regenerated the series' (rather than edit the patch
> > files) additionally with --base=auto. Re-attached.
> 
> Queued up, thanks!

This series seems to cause build breakages in a lot of places, so I'm
going to drop the whole set of them now:
	https://lore.kernel.org/r/be846d89-ab5a-f02a-c05e-1cd40acc5baa@roeck-us.net
and:
	https://lore.kernel.org/r/066efc42-0788-8668-2ff5-d431e77068b5@roeck-us.net

Nick, if you want these merged, can you fix up the errors and resend?

Perhaps you might want to run these through the tuxbuild tool before
sending?  You should have access to it...

thanks,

greg k-h

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/YE8kIbyWKSojC1SV%40kroah.com.
