Return-Path: <clang-built-linux+bncBCV5TUXXRUIBBZW75L6AKGQEYCTQMBA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vs1-xe37.google.com (mail-vs1-xe37.google.com [IPv6:2607:f8b0:4864:20::e37])
	by mail.lfdr.de (Postfix) with ESMTPS id 4630129EB3D
	for <lists+clang-built-linux@lfdr.de>; Thu, 29 Oct 2020 13:04:55 +0100 (CET)
Received: by mail-vs1-xe37.google.com with SMTP id k22sf587709vsg.5
        for <lists+clang-built-linux@lfdr.de>; Thu, 29 Oct 2020 05:04:55 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1603973094; cv=pass;
        d=google.com; s=arc-20160816;
        b=wsCtllnMHjNW6B/D9SSWvSZ6BvzJqjj3Ddn1ijb3R9RuPmGXIy3oseTx321UQ5Mkoh
         HdaJ/ixW4Ec1mj+bM6b3ydxoDlYG27wca3gPBwwiDGRN8/q3PDOkyZlvfV2aYhYecH2S
         0Df7A4TF4K0RDInLq686c774eU26w5RdcngBB13AwobrkPjPm9f33psf/iqaXzLJbTVQ
         eu4PmB6Ti7gDlq0M8c1QBk1rheAcdK99kz5pZOHYJCOwcErZPoTPLwS4uygSCwaSxcl5
         fi53QmWiNwJeDk0+pjtMXh9pR/EHeFAWwptsOoNYQ1mvMeoZTrHgM3RTNJQsUqlsMiaE
         ZjIQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=hv3ZAwyK2aOQ8QcClXWziO6/Ln5dpUVXtrV/hm7vLiQ=;
        b=mz0HVOXIn/ZVhV3g3k3GFq9TvtbsJKljwgNGe1iyC/T26HiSI80T6I2w8cPfkMp7wC
         IpraKHibhsVPNajk45t2jkdsO7t3znQP9LorMYU9CQmTZXCORlo10h7Y55zfgRApeM+W
         vszIBSo7VcuTw9cf1+GpGAzMe+MN6RTKEDAGgoM5bpkM924/Rq2kzg5uyNczpWxwgOvM
         njsu3naJ/8/VxeQqE+gOOshGluJfim0xqqNRXjlY2OxsqUim3S5yNmTulc8lrWoVUwdI
         VpGUsEYmuu89XOL/6naCCE2PoBfdzK67Pd2n5tANyeRhp9MQfa0pgmb5XRv9Q3eibfPc
         8Ddg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=merlin.20170209 header.b=gmyldzWA;
       spf=pass (google.com: best guess record for domain of peterz@infradead.org designates 2001:8b0:10b:1231::1 as permitted sender) smtp.mailfrom=peterz@infradead.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=hv3ZAwyK2aOQ8QcClXWziO6/Ln5dpUVXtrV/hm7vLiQ=;
        b=ApHAZ1bv/551kg6kp8RULh0HVQ61dGOWFxkrA1gP1s3NJy2HAtp3OzXpXZBNr+tidv
         Ix5INz/A88PvupHQEfw9j6mSRxS6H1dOVhRiIC/rpFiaoYycb+zaFdqOX1zwkaJ7I5Yt
         j73P+ocxhjelCB8QCS9N6NR/pUTyR4Qno1+8MtGGKSh4DwokVzRwjR80ivjfVaMHwXK/
         /roEiY1+gqfKMrNgZ2b/Vy9dp4txyCrqLtWw/xA4HMlfLilQBnJJhH/1kQxdyP6t5kWF
         HCIZMuutyeqKtopUaMOP0MwQxIuCL4bGhIV8sBLN1S2esc6pV8R90dM5GqXjyBtBJghl
         /TpQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=hv3ZAwyK2aOQ8QcClXWziO6/Ln5dpUVXtrV/hm7vLiQ=;
        b=ileEoVebrjhDMFs6psvY62H3BDqxqEYrhRaEFZhLIaQJTU3LvvPlZcd+TQTdMr0z07
         xdO00tFSVKRRtxlMqvdAmQ2Yzv5BrSRqHMTlS6OK40KUbHaMyQ9ix9nMZBQTmrD8Tdpc
         nxJ1rCZU7rV3sngRF095qP1N8VUK6tXZkwzoDq+rYwJyIHEquv5DJw9aBdtOw6vQHgtF
         cOh9F5XLxOoKxD2nwjNC5m3rcwdiqklEwoR8YdZJj17MF8iZdsQSi+95sizF7PKf7Gae
         rnnJ0B74JmH3IQNvsyerUYylcMIY+HezGF8INHJea2/D824ogOQ8EAIXvnIscx7J/a3/
         PAvA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532EWNut0EJ4TEpKNZEq/TyNLeJpF2O2yE9tUzV5PKtsT7FsyHJU
	uG6m6aak69ej4bgtlr3c4/o=
X-Google-Smtp-Source: ABdhPJxrfBeSNl8H3xSwR7TW81DAANAhPL2DeNg0dwKaPFlSrQxqK7LxVT2WEkUb2jXgP9BO0zTSzg==
X-Received: by 2002:ab0:74d1:: with SMTP id f17mr2230278uaq.30.1603973094183;
        Thu, 29 Oct 2020 05:04:54 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1f:cf85:: with SMTP id f127ls147126vkg.9.gmail; Thu, 29 Oct
 2020 05:04:53 -0700 (PDT)
X-Received: by 2002:a1f:1242:: with SMTP id 63mr2637613vks.8.1603973093698;
        Thu, 29 Oct 2020 05:04:53 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1603973093; cv=none;
        d=google.com; s=arc-20160816;
        b=b1OeITCWm7fXh+eo58JoitAGukG1m0qM9N8WgGskF1xAKYlItUzGTx3U+BSvi83BX/
         0zF99PBgPOqTnKyhDXE7kRSAHFlhNo+UriqkRl+f/LWi0oE1FC9yDCgTiTyadJloXXvl
         L2vF+sbN/bIUgDKooUFIWI7Tfc28e8jVSzddUe8xsPXxqMamAGCn+HCCynY8n10seAwT
         RlrHpx+4UgrkPeGQ3D43O/LRAc40N0Rep6b5Gzl8U6R3+oub6hK8pASFKkJhiiV8Tk5z
         SX2zCT0W01JfQCBeDjYgnvMNkl66gvxj8YSTXLvT3zMhoLZNE2a3/879B3GuTsXY+Krl
         tW2Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=o687iw3cdVKlrtAY0hVT9GT6GWB0dk8OiWOKpnhjMLg=;
        b=bNDKdb6+01QYFAwF4yASH0YLtUVLVaTkctrPuIhNxVcU17teWCR1VsvqVZ/kfRBdb2
         aDiGc4hTeT3u4aMhEByQmdaN8jlmLTTngTLcjB/0d7blUYbbOkc9L/g2jQle8ShpxYfP
         hLKZLnfWwstFzK/CYVcl6SoDcgkPMU3fyl62e8Iph33CgrqVpXGEm5ZVzhZ4fbxIi2xB
         qUqvf7AozfwZGmasX+elFsPfwAY8lsbVcTftZ1rNkhA/iWUE7kx9h0jzDKcrkU1kEz96
         qvABDFZYopoFjrWDdA9RX5SUrfo+L0qeazG9xaGdZlxybkU0gYmH+NjfSCU/Er1QMnAh
         tJrg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=merlin.20170209 header.b=gmyldzWA;
       spf=pass (google.com: best guess record for domain of peterz@infradead.org designates 2001:8b0:10b:1231::1 as permitted sender) smtp.mailfrom=peterz@infradead.org
Received: from merlin.infradead.org (merlin.infradead.org. [2001:8b0:10b:1231::1])
        by gmr-mx.google.com with ESMTPS id w123si130978vke.3.2020.10.29.05.04.53
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 29 Oct 2020 05:04:53 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of peterz@infradead.org designates 2001:8b0:10b:1231::1 as permitted sender) client-ip=2001:8b0:10b:1231::1;
Received: from j217100.upc-j.chello.nl ([24.132.217.100] helo=noisy.programming.kicks-ass.net)
	by merlin.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kY6fc-0008AP-QD; Thu, 29 Oct 2020 12:04:44 +0000
Received: from hirez.programming.kicks-ass.net (hirez.programming.kicks-ass.net [192.168.1.225])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(Client did not present a certificate)
	by noisy.programming.kicks-ass.net (Postfix) with ESMTPS id 104023012C3;
	Thu, 29 Oct 2020 13:04:43 +0100 (CET)
Received: by hirez.programming.kicks-ass.net (Postfix, from userid 1000)
	id EEB212B772B22; Thu, 29 Oct 2020 13:04:42 +0100 (CET)
Date: Thu, 29 Oct 2020 13:04:42 +0100
From: Peter Zijlstra <peterz@infradead.org>
To: Walter Harms <wharms@bfs.de>
Cc: Lukas Bulwahn <lukas.bulwahn@gmail.com>,
	Thomas Gleixner <tglx@linutronix.de>,
	Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>,
	Josh Poimboeuf <jpoimboe@redhat.com>,
	"x86@kernel.org" <x86@kernel.org>,
	"H . Peter Anvin" <hpa@zytor.com>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Nick Desaulniers <ndesaulniers@google.com>,
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
	"clang-built-linux@googlegroups.com" <clang-built-linux@googlegroups.com>,
	"kernel-janitors@vger.kernel.org" <kernel-janitors@vger.kernel.org>,
	"linux-safety@lists.elisa.tech" <linux-safety@lists.elisa.tech>
Subject: Re: [PATCH] x86/unwind: remove unneeded initialization
Message-ID: <20201029120442.GP2628@hirez.programming.kicks-ass.net>
References: <20201028122102.24202-1-lukas.bulwahn@gmail.com>
 <a28022479f594650a6d98adac3c4a6f0@bfs.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <a28022479f594650a6d98adac3c4a6f0@bfs.de>
X-Original-Sender: peterz@infradead.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@infradead.org header.s=merlin.20170209 header.b=gmyldzWA;
       spf=pass (google.com: best guess record for domain of
 peterz@infradead.org designates 2001:8b0:10b:1231::1 as permitted sender) smtp.mailfrom=peterz@infradead.org
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

On Thu, Oct 29, 2020 at 11:49:50AM +0000, Walter Harms wrote:
> this looks like a reimplementation of bsearch()
> perhaps the maintainer can add a comment why the 
> kernel implementation is not suitable here ?

If you look carefully it doesn't do an exact match, which is what
bsearch() does.

bsearch() also isn't stable in the precense of duplicates.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201029120442.GP2628%40hirez.programming.kicks-ass.net.
