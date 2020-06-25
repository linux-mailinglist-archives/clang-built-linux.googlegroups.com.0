Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBZUU2D3QKGQE3WTE4EQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3b.google.com (mail-yb1-xb3b.google.com [IPv6:2607:f8b0:4864:20::b3b])
	by mail.lfdr.de (Postfix) with ESMTPS id 06BE9209870
	for <lists+clang-built-linux@lfdr.de>; Thu, 25 Jun 2020 04:22:32 +0200 (CEST)
Received: by mail-yb1-xb3b.google.com with SMTP id f130sf4374422yba.9
        for <lists+clang-built-linux@lfdr.de>; Wed, 24 Jun 2020 19:22:31 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1593051751; cv=pass;
        d=google.com; s=arc-20160816;
        b=Pto27zs3YLJxPbst4HzWxVqsQU6T33u0pag1A2ZMSzPTuoNjrk9RaAvByidnBgJp81
         fxJsFVUHEEgDg/Q+sjMYqDLHPeCd8ErvnSuZVip+QXTQqbF1UdfrC2lCQNBOXJWPFU2c
         17EtZBrdT9asEtCi+nmsIdq6B8KWQnEIgvAILvxawLg2k9ADdM/AKZcfzzpOe6hj3DKs
         ovmSildkCO8GZuRdv2pBUmz5CLkuqtHkXpofrS05f4PQW3T1Qxhd9s6VhtaSGIquqpCq
         L5a0RXI6C2YxT2uFouzOR7fuHTDo09Aa1yZ4om0zeBxufGWXgdTHMO4Dpg6Xo7R048IO
         jNuw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature:dkim-signature;
        bh=wxICbLRZyJiCmiMAmZjsURIgxWHTlLwxK4tDmG/ajSk=;
        b=F7WOKp7D7K2ebHQCL7FKzwNnIfrqz64hn7kXmKYJQ2I7S5QhG46KFLiTgc8hFTn5q2
         b7zxksedfIbCpTk3TEPqaQrOtUhPfrd0CM2orDva22dp7FBBIF9AFrUMWxMw5kmXy8Z+
         kXrug0mNeEqy3552QIxLotgEwGN7alVi20anhWYCovmEM0/jKvffGKNQ2DxalPPu7DH3
         R9GHp6WzIIRoP09mYaOl5NQQ2/qor2rRvGN4Y9tnWol50tdtevYNrwdOclAEOOQkq23y
         NRxe5NTFE9cA/tTFp9oJVaY5/RkbHLQP+3DRbfIlawCIDy+JMIpjMAYLU+oJ9U/EQB6b
         beKQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=PzlzzsXi;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::341 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=wxICbLRZyJiCmiMAmZjsURIgxWHTlLwxK4tDmG/ajSk=;
        b=ZOKTv6f5fklBHdu5NMI8WMDOkupDq+RPnVd7sKD163rXdxWPPTU+FVJYnKwlnefdIl
         ZuF7CjUXRt9yec9pblhI8yO1gcpEBGrfIhHcbfBUMakkRpeHAFWxo5/o2DcPcGSFpUH3
         39osG78XRs8451Q8Oe/sXYn2dh6ZPkKoGS9FqnOoOJGFRkqv4qXyGaaRvk3vYkKgresO
         CGUIWEioetShqG1gt7HTlaDGMs/Hto67HQdyQxH5F1ZGBdZihum9Yhr2yvwk5ZfPeD3a
         uqyx7uEJuJ/28QRJ+TsNpFBMMyCGGUIthMFmRfIWGqEeyHSvhHBBd/rN+vstsKWuCwvz
         GaeQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=wxICbLRZyJiCmiMAmZjsURIgxWHTlLwxK4tDmG/ajSk=;
        b=l/DblILdBAjVwRs1oyHc2W+pB1t0pnlziTlIitQ3Z0Taf8lrUm4IfXsisA5+kV3EIx
         1iRE9ifTwk+aLYm8kXtvrAHD/4eL9mUT8vwAo3N48pJRlj3W0yjcO2et5W7WNtEtxw/5
         vz/aIC9rnLNT4KBF3pQv/qx4CbbvwgTffpC6aVs9UCcLfJtAic8LInHxPYFBGp3xiGkF
         riKXl5WUC6usY5vrW6vC2uonqA8WsnjtuJYlxDeMR4nJtkX91L9j+f76r/As8PakGB/e
         1Or58qwGlAA5oqVcJksSZgAuJ6pBaLgTYGlQzsReMHfX3J9mcsd7Zon0Hw4cQU0yM6QG
         TqEw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=wxICbLRZyJiCmiMAmZjsURIgxWHTlLwxK4tDmG/ajSk=;
        b=GUMbwMVMfEMonGKrNjnASdNYI8tjF+E3EmkdXk0cWAToBAwd9bFBp3KffqWd4AaQem
         ytZJ7yUCP1IdgXAa5glp75UlA11a3vxP8fb7qiEwMsRnh3s5ia0bseemuBQ2BXPu57Ti
         iZH7DiFlz0COMkVAGGrVz2oO0rJZ54DA6BwEI3g2E+6oLDP6xAaLv9pB9WD9nOrYJMU0
         fNlq2LkbHZClqPVTPuR42NVIcWyWJPts8lSLPV9S5ZYgp4m6R9YhFdyU1IS12qtdd/87
         upt9pjNL+kWAVVm0x43t4P1ctoUpAi9g/pNtGSZy1ZENIPSFpFObKoXbmTNtJrb65stW
         /tXw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533ZH1SwPq+HipBlGcipbKLdfUauX4LdNzv/elZwZBRpbia1bU2F
	Uu72VSdKclvS4/TqPvfHhww=
X-Google-Smtp-Source: ABdhPJxdvm8tLJR6NOofLUJYoG27VBJOXgIkjYRau64FLBq9DAvGiDwAUXFBWCEP14vyh39vJrymgw==
X-Received: by 2002:a25:d08c:: with SMTP id h134mr51170184ybg.513.1593051750761;
        Wed, 24 Jun 2020 19:22:30 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:c785:: with SMTP id w127ls1498464ybe.7.gmail; Wed, 24
 Jun 2020 19:22:30 -0700 (PDT)
X-Received: by 2002:a25:bf8c:: with SMTP id l12mr52175636ybk.447.1593051750486;
        Wed, 24 Jun 2020 19:22:30 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1593051750; cv=none;
        d=google.com; s=arc-20160816;
        b=UY6+8jPXg4zXhB/I+o4CxM3gJK/NdQd7SKFgLWhu2gJxggqeUQaQsr1AZzU7Qi/BJW
         X1cl33yejTgnMNStPRanrcXBTG8tQDIjOO4mNbo/YVchTjjOWk3teLRf01ZNFqCNeodY
         12Sf/a5b8obYbdCSe2IKLSBaWgY27CFpmidqN9NHfcezPfyq38GW1+b46NXPSehxsWor
         yUldICQrMrPQgDJnZiS5jVFOpGNwOBVJxum7zfsWT5bID74MPazs2ItLYWsW6ZZn97KC
         G7aqgsB7K7GuTpGauCxv/BtOsaYWKdcQvd4IbMGGSlThUdvJJvLPGmNh7/xXnKZucEA0
         YB+A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=xdH2xoOfsMc7dLXOy11ch04mvWFiqfyRgGDX8RhsAdM=;
        b=jY9SKh6yhNulqL4MDbf4zo4t+R+Trg+TD1s2Hdn0JNkYMQnv2+P37npajYadvtzUdu
         0yAmV1ebIRjVNQeRBIt9dEC2+gb/ClMasDicyasxVBQJqkIxbPBLxZwGDbZp4jF5IZAg
         5jUfY7bNMKSuJ1TsITGPGzRy3Wq+eYwmlWnz8LmS/+qeC4EdgTzWzjwGs3G6sOK0ZRWc
         hBzg1gedQZUX99thdJ17zNrEA8UNtd1dveBBUWFrAsgL1mSbSTd70o/+hEBYNr23aArt
         S9mFdrW6xQTsHJ6lTeh7STrcp4fw/s0Z/MTfulv2Syl5DE7QjyN+eA4SwbNjJvckPPsW
         ChrA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=PzlzzsXi;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::341 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-ot1-x341.google.com (mail-ot1-x341.google.com. [2607:f8b0:4864:20::341])
        by gmr-mx.google.com with ESMTPS id k11si1680208ybb.4.2020.06.24.19.22.30
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 24 Jun 2020 19:22:30 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::341 as permitted sender) client-ip=2607:f8b0:4864:20::341;
Received: by mail-ot1-x341.google.com with SMTP id t6so3866842otk.9
        for <clang-built-linux@googlegroups.com>; Wed, 24 Jun 2020 19:22:30 -0700 (PDT)
X-Received: by 2002:a4a:b791:: with SMTP id a17mr25742894oop.48.1593051750035;
        Wed, 24 Jun 2020 19:22:30 -0700 (PDT)
Received: from ubuntu-n2-xlarge-x86 ([2604:1380:4111:8b00::3])
        by smtp.gmail.com with ESMTPSA id h17sm2801127oor.18.2020.06.24.19.22.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Jun 2020 19:22:29 -0700 (PDT)
Date: Wed, 24 Jun 2020 19:22:28 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Geoff Levand <geoff@infradead.org>
Cc: Michael Ellerman <mpe@ellerman.id.au>,
	Benjamin Herrenschmidt <benh@kernel.crashing.org>,
	Paul Mackerras <paulus@samba.org>, linuxppc-dev@lists.ozlabs.org,
	linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com,
	Joel Stanley <joel@jms.id.au>
Subject: Re: [PATCH] powerpc/boot: Use address-of operator on section symbols
Message-ID: <20200625022228.GA2871607@ubuntu-n2-xlarge-x86>
References: <20200624035920.835571-1-natechancellor@gmail.com>
 <1bbb6956-d9de-e0c8-5b45-20b6fecc2189@infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <1bbb6956-d9de-e0c8-5b45-20b6fecc2189@infradead.org>
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=PzlzzsXi;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::341 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

Hi Geoff,

On Wed, Jun 24, 2020 at 06:18:48PM -0700, Geoff Levand wrote:
> Hi Nathan,
> 
> On 6/23/20 8:59 PM, Nathan Chancellor wrote:
> > These are not true arrays, they are linker defined symbols, which are
> > just addresses.  Using the address of operator silences the warning
> > and does not change the resulting assembly with either clang/ld.lld
> > or gcc/ld (tested with diff + objdump -Dr).
> 
> Thanks for your patch.  I tested this patch applied to v5.8-rc2 on a
> PS3 and it seems OK.
> 
> Tested-by: Geoff Levand <geoff@infradead.org>

Thanks a lot for the quick response and testing, I really appreciate it!

Cheers,
Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200625022228.GA2871607%40ubuntu-n2-xlarge-x86.
