Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBL6AY3VAKGQEVKFPARY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x13f.google.com (mail-lf1-x13f.google.com [IPv6:2a00:1450:4864:20::13f])
	by mail.lfdr.de (Postfix) with ESMTPS id E27758A42E
	for <lists+clang-built-linux@lfdr.de>; Mon, 12 Aug 2019 19:21:51 +0200 (CEST)
Received: by mail-lf1-x13f.google.com with SMTP id t23sf12681790lfb.8
        for <lists+clang-built-linux@lfdr.de>; Mon, 12 Aug 2019 10:21:51 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1565630511; cv=pass;
        d=google.com; s=arc-20160816;
        b=d3KctetYVGIk80FYfrrRfbUvDO+C2/WvEZVnS/7TIatWAu7Pqn00HV1VJMtaX+UncK
         bdexoZEM+3tcZrYWv+g2lYxiDCnYKKXmvft5XyHmkTH/vM7IShwOdn1t9fKRJyZlViKA
         /NCncuE+q5KWF8It5aMl39rIiZnNuH0Xtt9UBbYkOnfVd6DpxaJVP3iCl3oJsmj0lNP7
         GtuhJJyqLPaggLrqycRSfiRa77fU+MBquZuJfZhLQUJBxHRUbTaMyXr1jmHFlaAU40IW
         9O61yr20KDEZBFqs+2ZYM30avFTYD4pK1TZMi+MhcEkRMNKanX4CHGg7ZYtNs5IbjLv7
         3nBw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature:dkim-signature;
        bh=p2mdzr4Bvo92DyG5HnSjIatNe3kf1oGnsZaM3EnrsB4=;
        b=lrF8tB9menpUUg9O6Jg6RNyG9RJhXsjk3gsEymUsHnDV1+siWco4ZGopGw2FVCmqaI
         0gkKT7ifM7zc0yU9DviiLEX7BnYIKTGPkLz0/+m+0Bp0Y7SCfV3Mf/xvKcRyi1zFop18
         qof+ULH3vk4f0RP0EdoDyypJX218WBjKC6dnlpAmsspaNLhMjTZs/XRkJtJuUWNe1bEG
         WOv3mRoSU1u8cvnvooARWKUWhS3rRIkD54VR1EpKNjAGJeRU5MKUHB08dZNeiDtU58NV
         s1tygzJ3BO9LW49cSGhPP5905mG6w/2D5m2u96gTYH9Ep4uz0iam3MpmiV60/3fnqHfl
         erSA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ECIPBmGi;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::343 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=p2mdzr4Bvo92DyG5HnSjIatNe3kf1oGnsZaM3EnrsB4=;
        b=DuWfy7vijDlsgt+NgBgaetOjZEhWdaP9zngOlWdiQyHjVi3Vr0ybnKunG6Dto8Dm0X
         X1Y59ah/t5eWcb2ALjOKW8W4reNNaYZYlVQ4twcrRSCFNWIAcicyxYwPHKmf3dYbu2mK
         O5DpYK+BbnkjH0kZGWoNubq5JTg7IC4sFreJ4Gevv072yAx71obrCzbYGmelFKK+zXZ0
         66UlrDc89mtRBmN1oKJeOKcjdDaXRud7X7riTGJHmwk97ee6arDWaqG201hBpQ2YQbpp
         Ez/W3DMWwJfymUJSrQKli19NgrckWDxlStrXJ90NJnA8uIJa/sUhndZuftw345v61R/v
         TWAA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=p2mdzr4Bvo92DyG5HnSjIatNe3kf1oGnsZaM3EnrsB4=;
        b=gt/EfJQ66KxKBK5Ge6b9zaU5rSJrolk38GUZVcBqoxt2n+WhPdaUfrTWMArMT325V3
         E0YYHv0UHT3freTKf925rhs5YO7ZxV6AwbwdmISaMKd+Keg4AG4FlG5fzuk0IHpmfaFf
         Cg+OeM/1Pe4ISESUZrIx07SkS525mqtkJMQo/pGU+yKy6oR3HmXG7VpFui4ZU8rh7BZC
         J3HvOvc/5xbzqkz+GMsqhqbLeFGk6iCtVac7k3XtgjO6y8qPYmfxus27MIjhRa0k+DZ9
         c+bRFdFVyqlD7PHIliiRt859kLx+/zPXSilf/cCtIEvEbjYmReelDc8jR5yPq2iU/yCs
         dE5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=p2mdzr4Bvo92DyG5HnSjIatNe3kf1oGnsZaM3EnrsB4=;
        b=MZYhf+Mq5QnSt2MZF5JGhIk54DqZiS4GEcOlXc5Du2Nf95zp+kL5INf5Nl/OziDKr+
         zalgmfO8CfDKzR8ckMcOY4+XmoKA7mM45IDuSGn2XDzJk+0l7JSQx56MThsxqw8+fXpA
         Jc5bsauwYKreGHGyFkPbvnOfWhgM6a3bdAxskdeo3hjy3wU0Wtu252ahpCu5CgkAkWNX
         glaw3Dx0h24DjLSUGncYipmvtTNq1IkaCHkXyQzJKzQr64FkOrghpw4ZroMjxHE5zGW6
         y76sTTOZStFaK5NZU/Bad8hqunyTqGXoKK2eLw83sYu8RxAAfL0VROH87bQy4/oA0bcw
         YvZg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWHsD8DAt+CyPxqVGk1AtJOJi4lSPssDfuPkcc1rcjP0fF0Rpov
	NSR7S56gs0Ee56a9Aj9VhhI=
X-Google-Smtp-Source: APXvYqzZs99JkD8h7HJ/aAhjXfdU6EnoVcvjpkOBu4c78X83DbL9EPUcW5dNqRq+0g8/Esi5gj+Vzg==
X-Received: by 2002:a19:48c5:: with SMTP id v188mr19973373lfa.69.1565630511391;
        Mon, 12 Aug 2019 10:21:51 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:8614:: with SMTP id a20ls1240206lji.4.gmail; Mon, 12 Aug
 2019 10:21:50 -0700 (PDT)
X-Received: by 2002:a2e:3a0e:: with SMTP id h14mr2755127lja.180.1565630510971;
        Mon, 12 Aug 2019 10:21:50 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1565630510; cv=none;
        d=google.com; s=arc-20160816;
        b=KxcHUA4cVA5xbMHQBuOX4FAracQ/In3i4WbyTR7c6MuIrR7bgZqJwAqJezpy73CvdK
         GNF2ZwpnArCpIhN4j0mY3L6hm6lsWUNrRZ+nEcG2C34LotPr+bTqXWTrOu+6J2PUvQvM
         RDzVeSmUUVDFrBysH1BWTMwdMg/EWQQhM19Ed1iCLyG2VADuyiULVXvuOV0bh8uA8Frs
         lamGEY+VswtaI0qKUloVfRK7zA7lsX7JWdtyglVUB8BK7olfGSIrLQeO0pJ5QtjOtI9G
         hG8P0aiXka/K/LoJytqJgYG3C14gAycKLHTHL03tznD1PjnJFvXB1O6jyH2SLq53wWB3
         K1RQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=L309svb3g9Vf+agsDho/otWQEwoMwezzttm4UAge4xQ=;
        b=VyhnWXdBiPhKd7jWcf4Y2pcsXND8gkYKDxSP1BThj9aaTn+MdFN56bZgQSAdI9aktb
         Vc64OV9pgF5XNuo3jwKLm+zphf7SeG5i43dQeQ8kliq1Q67LjLHXWaxW/5GP5KQIqEkA
         r1DN+SKQDOae0Q1W8IqumP5+dH4rVZeM6No4OAHml3T9w5UTo6m2CAkMKjCGdIICGfiY
         tFsiOo9JOuTmFsgHJRbPo+jkntRsVfmlixGnaiGl/OPzvQQwume9Lm7dztpwl+VFKb7H
         uwOHzD3iLFkp6X0g/o8aBm9Ydzmx5vjML1AM1kn9nGB6hc/lAr47rVYLI3JkNe+T25YA
         mOiw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ECIPBmGi;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::343 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-wm1-x343.google.com (mail-wm1-x343.google.com. [2a00:1450:4864:20::343])
        by gmr-mx.google.com with ESMTPS id t23si1332509lfk.2.2019.08.12.10.21.50
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
        Mon, 12 Aug 2019 10:21:50 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::343 as permitted sender) client-ip=2a00:1450:4864:20::343;
Received: by mail-wm1-x343.google.com with SMTP id e8so448821wme.1
        for <clang-built-linux@googlegroups.com>; Mon, 12 Aug 2019 10:21:50 -0700 (PDT)
X-Received: by 2002:a1c:9d53:: with SMTP id g80mr353766wme.103.1565630510106;
        Mon, 12 Aug 2019 10:21:50 -0700 (PDT)
Received: from archlinux-threadripper ([2a01:4f8:222:2f1b::2])
        by smtp.gmail.com with ESMTPSA id q3sm228133wma.48.2019.08.12.10.21.49
        (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
        Mon, 12 Aug 2019 10:21:49 -0700 (PDT)
Date: Mon, 12 Aug 2019 10:21:48 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: kbuild test robot <lkp@intel.com>
Cc: kbuild@01.org, Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux@googlegroups.com
Subject: Re: [PATCH v5 1/9] NFSD fill-in netloc4 structure
Message-ID: <20190812172148.GA10638@archlinux-threadripper>
References: <201908130138.k0gA2KvI%lkp@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <201908130138.k0gA2KvI%lkp@intel.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=ECIPBmGi;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2a00:1450:4864:20::343 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On Tue, Aug 13, 2019 at 01:18:21AM +0800, kbuild test robot wrote:
> CC: kbuild-all@01.org
> In-Reply-To: <20190808201848.36640-2-olga.kornievskaia@gmail.com>
> References: <20190808201848.36640-2-olga.kornievskaia@gmail.com>
> TO: Olga Kornievskaia <olga.kornievskaia@gmail.com>
> CC: bfields@redhat.com
> CC: linux-nfs@vger.kernel.org
> 
> Hi Olga,
> 
> Thank you for the patch! Yet something to improve:
> 
> [auto build test ERROR on nfsd/nfsd-next]
> [cannot apply to v5.3-rc4 next-20190809]
> [if your patch is applied to the wrong git tree, please drop us a note to help improve the system]
> 
> url:    https://github.com/0day-ci/linux/commits/Olga-Kornievskaia/server-side-support-for-inter-SSC-copy/20190811-120551
> base:   git://linux-nfs.org/~bfields/linux.git nfsd-next
> config: x86_64-rhel-7.6 (attached as .config)
> compiler: clang version 10.0.0 (git://gitmirror/llvm_project 45a3fd206fb06f77a08968c99a8172cbf2ccdd0f)
> reproduce:
>         # save the attached .config to linux build tree
>         make ARCH=x86_64 
> 
> If you fix the issue, kindly add following tag
> Reported-by: kbuild test robot <lkp@intel.com>
> 
> All error/warnings (new ones prefixed by >>):
> 
>    In file included from fs/nfsd/trace.c:3:
>    In file included from fs/nfsd/trace.h:128:
>    In file included from fs/nfsd/state.h:42:
> >> fs/nfsd/nfsd.h:391:16: warning: declaration of 'struct nfs42_netaddr' will not be visible outside of this function [-Wvisibility]
>                                        struct nfs42_netaddr *netaddr)
>                                               ^
> >> fs/nfsd/nfsd.h:401:18: error: incomplete definition of type 'struct nfs42_netaddr'
>                    sprintf(netaddr->netid, "tcp");
>                            ~~~~~~~^
>    fs/nfsd/nfsd.h:391:16: note: forward declaration of 'struct nfs42_netaddr'
>                                        struct nfs42_netaddr *netaddr)
>                                               ^
>    fs/nfsd/nfsd.h:402:10: error: incomplete definition of type 'struct nfs42_netaddr'
>                    netaddr->netid_len = 3;
>                    ~~~~~~~^
>    fs/nfsd/nfsd.h:391:16: note: forward declaration of 'struct nfs42_netaddr'
>                                        struct nfs42_netaddr *netaddr)
>                                               ^
>    fs/nfsd/nfsd.h:406:18: error: incomplete definition of type 'struct nfs42_netaddr'
>                    sprintf(netaddr->netid, "tcp6");
>                            ~~~~~~~^
>    fs/nfsd/nfsd.h:391:16: note: forward declaration of 'struct nfs42_netaddr'
>                                        struct nfs42_netaddr *netaddr)
>                                               ^
>    fs/nfsd/nfsd.h:407:10: error: incomplete definition of type 'struct nfs42_netaddr'
>                    netaddr->netid_len = 4;
>                    ~~~~~~~^
>    fs/nfsd/nfsd.h:391:16: note: forward declaration of 'struct nfs42_netaddr'
>                                        struct nfs42_netaddr *netaddr)
>                                               ^
>    fs/nfsd/nfsd.h:412:35: error: incomplete definition of type 'struct nfs42_netaddr'
>            ret_addr = rpc_ntop(addr, netaddr->addr, sizeof(netaddr->addr));
>                                      ~~~~~~~^
>    fs/nfsd/nfsd.h:391:16: note: forward declaration of 'struct nfs42_netaddr'
>                                        struct nfs42_netaddr *netaddr)
>                                               ^
>    fs/nfsd/nfsd.h:412:57: error: incomplete definition of type 'struct nfs42_netaddr'
>            ret_addr = rpc_ntop(addr, netaddr->addr, sizeof(netaddr->addr));
>                                                            ~~~~~~~^
>    fs/nfsd/nfsd.h:391:16: note: forward declaration of 'struct nfs42_netaddr'
>                                        struct nfs42_netaddr *netaddr)
>                                               ^
>    fs/nfsd/nfsd.h:413:29: error: incomplete definition of type 'struct nfs42_netaddr'
>            ret_port = snprintf(netaddr->addr + ret_addr,
>                                ~~~~~~~^
>    fs/nfsd/nfsd.h:391:16: note: forward declaration of 'struct nfs42_netaddr'
>                                        struct nfs42_netaddr *netaddr)
>                                               ^
>    fs/nfsd/nfsd.h:417:9: error: incomplete definition of type 'struct nfs42_netaddr'
>            netaddr->addr_len = ret_addr + ret_port;
>            ~~~~~~~^
>    fs/nfsd/nfsd.h:391:16: note: forward declaration of 'struct nfs42_netaddr'
>                                        struct nfs42_netaddr *netaddr)
>                                               ^
>    1 warning and 8 errors generated.
> 
> vim +401 fs/nfsd/nfsd.h
> 
>    389	
>    390	static inline u32 nfsd4_set_netaddr(struct sockaddr *addr,
>  > 391					    struct nfs42_netaddr *netaddr)
>    392	{
>    393		struct sockaddr_in *sin = (struct sockaddr_in *)addr;
>    394		struct sockaddr_in6 *sin6 = (struct sockaddr_in6 *)addr;
>    395		unsigned int port;
>    396		size_t ret_addr, ret_port;
>    397	
>    398		switch (addr->sa_family) {
>    399		case AF_INET:
>    400			port = ntohs(sin->sin_port);
>  > 401			sprintf(netaddr->netid, "tcp");
>    402			netaddr->netid_len = 3;
>    403			break;
>    404		case AF_INET6:
>    405			port = ntohs(sin6->sin6_port);
>    406			sprintf(netaddr->netid, "tcp6");
>    407			netaddr->netid_len = 4;
>    408			break;
>    409		default:
>    410			return nfserr_inval;
>    411		}
>    412		ret_addr = rpc_ntop(addr, netaddr->addr, sizeof(netaddr->addr));
>    413		ret_port = snprintf(netaddr->addr + ret_addr,
>    414				    RPCBIND_MAXUADDRLEN + 1 - ret_addr,
>    415				    ".%u.%u", port >> 8, port & 0xff);
>    416		WARN_ON(ret_port >= RPCBIND_MAXUADDRLEN + 1 - ret_addr);
>    417		netaddr->addr_len = ret_addr + ret_port;
>    418		return 0;
>    419	}
>    420	
> 
> ---
> 0-DAY kernel test infrastructure                Open Source Technology Center
> https://lists.01.org/pipermail/kbuild-all                   Intel Corporation
> 

Already reported with GCC:

https://lists.01.org/pipermail/kbuild-all/2019-August/063130.html

Cheers,
Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190812172148.GA10638%40archlinux-threadripper.
