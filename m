Return-Path: <clang-built-linux+bncBCUJ7YGL3QFBB3HHSH6QKGQEZDIBS2Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x237.google.com (mail-oi1-x237.google.com [IPv6:2607:f8b0:4864:20::237])
	by mail.lfdr.de (Postfix) with ESMTPS id 10B4E2A893E
	for <lists+clang-built-linux@lfdr.de>; Thu,  5 Nov 2020 22:51:42 +0100 (CET)
Received: by mail-oi1-x237.google.com with SMTP id 9sf493818oin.9
        for <lists+clang-built-linux@lfdr.de>; Thu, 05 Nov 2020 13:51:42 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1604613101; cv=pass;
        d=google.com; s=arc-20160816;
        b=WiHvmarM0Ymq+pkj3nxhxhTnhXe3d0M90sJ0vY1PFO6Pf9M3aSgSxpdraMoQiuLqeg
         b/lnblgUz97NU6CQsGertJa1hwRbpxHac26aLVbv+AgmU40US/Bw3npgjLt7R68IeuHL
         +BWDUYQsFSb+gZt8989+j5Af/Lo4yqNLCCaGPg6WOjd2t780LYelyCfh68y0IavGotco
         VmJ+4YQ8RUcrcIz9iV/q7kmPzqngbkUMCqWj4sKtj2UUKaaxEwAeIiwQngbMFUERCsZv
         U+E1+/rnEGfn75QfuTmISL1ggpkf9rQDDPEBs99qbMln8kKgqBP/q1R7PnIZUOXXrM+t
         lePg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=DcTDJZJg7mBxZqVIss8CDMpeK00jMEG0Vm66GwAxMfE=;
        b=p5lX2bd+rPLYvoPk70fq1tzd7PkP4CK2m9/UtRUV/7PjDaAmSP/dtwJmFzY1NNp1qs
         HIpiH85BLn3xwjAG8l3/37Bx4IH+hsfHe0rUH/pTZTlFHgT5jIOGMf3F8WpjEWvcYT+5
         YuTX6wBEZvOFJgEZafaKrjRNNP5wXc6iP0mW9+ODz95yf8cTKH65I0Vpf0I3gVzKnmtA
         yLWdr4/ipfRGBvXX0l/8EbUdlc/vzNGxK4fTUkuzCwYTMZ1SiOGinY+2+Ix9KWo+MDbV
         liHNmQ9bUUH8mYkcTJ3pBR4ZFhf5KBf9Shcyarotu0auaC7c74ed0mB3nW3Nv95lsyra
         OlSA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=OXGOq15A;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=DcTDJZJg7mBxZqVIss8CDMpeK00jMEG0Vm66GwAxMfE=;
        b=m9J3o8IKS4iv69qdWJab9ic3ZBu8LcMdSWNVAOGzbA6ZgM3g9lHN8Nurinu3g1HMi2
         /GmHxbey7PJrqvDy6qAduOitYvqYR/2960HtZ/o3NwrpkHZn80ph9kfylVLNnL364f+C
         9iMjn/B6h8k8k9iEnz0cmfmEcjtaHEmbjLLm1cfk/Mv+W05hCYTLQMGKFERt6vuyX12K
         Zcrh2TKpnIC7b/q4cSWdoj+Enhq0EoHj2Gn8vh43v/pJpI8V/nr1WA1yhXjd/WRFH3r/
         GRuOR95ZUVM4kDBRMsGyCSpKWd5H/E6JKMZwtV47WLBFoNJ7YicpyF5DHnvoj3Bcizoy
         ViaQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=DcTDJZJg7mBxZqVIss8CDMpeK00jMEG0Vm66GwAxMfE=;
        b=MdRvOd8PQW6ppncrk0tsVBT/VaPu8ffP0Q6iU4AQF8X+MKywYjRxWcYL0tNxu/DhIh
         ucoRVom21FLBF8wQquMVlQAltO82l3LKNKmv/6Q9gcVgkETb+WULojI+0jsNd+MVIFaM
         LPxbzaa0+Ri0LB5/mOIhpBjmnwVg9ixw2K0W5hKByfOFQbbMQ8Jkvf5raJuTY2vHhHKU
         lXmaDk1JHMxM7U/x5T060kD1CqFVRH5OSbEncqOc9mgE9+KlEQTY6TlAiDQoXdjLxN1g
         7IWgoGFW8d1frjecJAr9rzWu4NsPNon5832iSCOq/R1cKprq/GSoMQHj50RYy7qi09/q
         /Tuw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531clxytJ10qTHRkbkKv/h26e8WXBNRWddcCRcm5UoSmvC6I8zYe
	qQt6Ogy9DkKnoDrHI0E7RgQ=
X-Google-Smtp-Source: ABdhPJyPzH+3ySUTOyaPoslEF6L02HbR3dkLq3YT1By90P9J4hp3ZbwJ0JbvBufPzDIKVfs3zS1fbA==
X-Received: by 2002:a54:4199:: with SMTP id 25mr912570oiy.50.1604613101067;
        Thu, 05 Nov 2020 13:51:41 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:416:: with SMTP id 22ls774685oie.7.gmail; Thu, 05 Nov
 2020 13:51:40 -0800 (PST)
X-Received: by 2002:aca:c554:: with SMTP id v81mr968171oif.143.1604613100599;
        Thu, 05 Nov 2020 13:51:40 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1604613100; cv=none;
        d=google.com; s=arc-20160816;
        b=ikocYjz8pzTh00JS++2raWuJS8KCPaYOK3Zo5E3Yc3H47KUatiBJKcVVmSIxRY99zI
         zarbCJ3EDrMp/W3OGFQbr5zKwMQcs66ULW5B2s8ICIAUPazIjtKtZs3IX25ajntQKbBI
         T7LSE3DDmM2XTKhqN+d9XWSOzOb6vghz4dBvxZNsiardL5JTkwTZXVmNJUchnDufQAZx
         oxJ0rRLaiNJheghoTnwSXIhcwMzyzDmB1BCp0cx0wZlHTnz5ntDwe3wIMNyQPO70iIq7
         lrn6skV1kyoUuHmNtYbqz8GVOCoX+B967jplRRQ/bW5Mh1iGDP2XoJLqInVlECiJZWSY
         3CZQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=m5h3ucdbdC4sk2GHtoH6o9l/pOTk0qUyzTT1JBKSXO8=;
        b=cTG7LZoWy4BFd+GvbTgO+cUd3lOjo0o5bwwnTzfJ2OQSu8lRkR9i+h0NKLq+TEabkl
         Bzj13D+OdZW4RyeYIKs1mUKdEjmBE3FDyqizxnFpWXA4YpEbkEE25Y8C+OTksSi1kVpR
         v3ESZfNKQPbXC5Y8W9z9nK8ZUEteShOfMGUlJB31+9skznnwrjaNf6tKoV+pclO4p+xZ
         rcpC4jBjXM22yl5u9aihcsQ7OHiZt/EQZkeZsHwqlTYfpzw+WctMTlCl+61A3U6JmOYV
         Y5FfEX7Cd8hAtWpfR8v5Uz22DhFXuPCLeYbF/E3/rjKqTzzc0GfvvGPHwz4dw7V0c0Fc
         bQDA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=OXGOq15A;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id v11si193830oiv.0.2020.11.05.13.51.40
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 05 Nov 2020 13:51:40 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from localhost (83-86-74-64.cable.dynamic.v4.ziggo.nl [83.86.74.64])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id A2252206CB;
	Thu,  5 Nov 2020 21:51:38 +0000 (UTC)
Date: Thu, 5 Nov 2020 22:52:26 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Jian Cai <jiancai@google.com>
Cc: "# 3.4.x" <stable@vger.kernel.org>, Sasha Levin <sashal@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Fangrui Song <maskray@google.com>,
	Josh Poimboeuf <jpoimboe@redhat.com>,
	Peter Zijlstra <peterz@infradead.org>,
	Dmitry Golovin <dima@golovin.in>, Borislav Petkov <bp@suse.de>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Nathan Chancellor <natechancellor@gmail.com>, mbenes@suse.cz,
	Manoj Gupta <manojgupta@google.com>,
	Luis Lozano <llozano@google.com>
Subject: Re: Patches for building kernel 5.4 with LLVM's integrated assembler
Message-ID: <20201105215226.GC2123793@kroah.com>
References: <CA+SOCLJMyUZ8c0e5xkvm+r0pMxBoUxmQRaoasKOS2T28Z10Ziw@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CA+SOCLJMyUZ8c0e5xkvm+r0pMxBoUxmQRaoasKOS2T28Z10Ziw@mail.gmail.com>
X-Original-Sender: gregkh@linuxfoundation.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=OXGOq15A;       spf=pass
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

On Tue, Nov 03, 2020 at 02:51:32PM -0800, Jian Cai wrote:
> Dear Stable kernel maintainers,
> 
> Please consider cherry picking the following commits (ordered by commit
> time) ino linux-5.4.y.
> 
> ffedeeb780dc linkage: Introduce new macros for assembler symbols
> 
> 35e61c77ef38 arm64: asm: Add new-style position independent function
> annotations
> 
> 3ac0f4526dfb arm64: lib: Use modern annotations for assembly functions
> 
> ec9d78070de9 arm64: Change .weak to SYM_FUNC_START_WEAK_PI for
> arch/arm64/lib/mem*.S
> 
> The first three are required to apply the last patch. This would unblock
> Chrome OS to build with LLVM's integrated assembler (Please see
> http://crbug.com/1143847 for details).

I've done this, but does this also provide this functionality for x86?

thanks,

greg k-h

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201105215226.GC2123793%40kroah.com.
