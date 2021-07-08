Return-Path: <clang-built-linux+bncBDUNBGN3R4KRBW4ZTKDQMGQEB3ZCB6A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x13a.google.com (mail-lf1-x13a.google.com [IPv6:2a00:1450:4864:20::13a])
	by mail.lfdr.de (Postfix) with ESMTPS id E86E63BF512
	for <lists+clang-built-linux@lfdr.de>; Thu,  8 Jul 2021 07:27:55 +0200 (CEST)
Received: by mail-lf1-x13a.google.com with SMTP id r12-20020ac25f8c0000b029035895cb945dsf2451224lfe.12
        for <lists+clang-built-linux@lfdr.de>; Wed, 07 Jul 2021 22:27:55 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1625722075; cv=pass;
        d=google.com; s=arc-20160816;
        b=eVh7iJR27cD2+4ifD0sCttDet0ummgYp+LgcJ9ah48Ij0C/mcJsv+3deau0O/caLqb
         ElTe328SpTKP8cL+Y57lDnwhsPHBGdiS8Y3pSyrnJf+dfd1wb//AfvpOEEBT4P7Z7KBv
         qNmih8OBaNYJ43EanFQjEuuHC5RE51S0ehB6NWZtNzdOfpjFPmsXjJ18Osv+U0uGldif
         O+slSrUK97f7uofitZG8WLnpCOm3oDlLeqAkmy7OuYYLBnhDlTORDfKmYhICbNqAvBcM
         SLtX5Qs/vXy5mNkPkRxGflbc+YFT1LTjN8uuiAB0kAMyDgOQYRzNZQxyw9xv1W3ZJld3
         W6og==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=nSgbs3kPcnfZyj31V/vFsmqFr5cxslydcBBdWIAuFZY=;
        b=ZXFfooVFz3evv6U0kFcfVW/gfjKd0PkYOOrKztaZS/uUn/gV9nKAIFxnzy3sZckhqx
         TGmAsneq6ir11Z3OZkOdfAaVt/SW6klIPI1sflWNacEPS9QVzsJHshBd2nL53tHjTaPK
         3l3ys3qw0yvKtEWchM4WkDzfTSYyIQxdDebgKaHtwlnkVtwbhY8z2shaj/4pOasKD7zc
         x9J0F2iQFok1gfYBV/0Y6rVEbkAV526bBrMeDIbubHtO7sC7Mq+YO1nnKmeAVDxzu46F
         9EugnaqXou31otCKZxA5Fwvjy4C8Fxwzip/Ib9Ng95Dx49AoD+2BBW6RsFGB7zpEOVtt
         QnbA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of hch@lst.de designates 213.95.11.211 as permitted sender) smtp.mailfrom=hch@lst.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=nSgbs3kPcnfZyj31V/vFsmqFr5cxslydcBBdWIAuFZY=;
        b=Si91bGfIBQOB01qgrrOhvf7uEylHz8p4IQxUpOZRs3F8Sr9cptPljMukddtYKetYmF
         z4U7o/XMrsk/SAHBSr/Nv+Kh0UhXJyyUtXCIR8DIMNoalIDSYLFQQFQm+NJ7K9xtJobW
         Y0RaUIhV67fxN6+os7WFwHng42pIae1hv3V+F86V5Xc+NJH6SIVyXJK1QDpFngWls6MA
         FPzbkzHb9cQ9WMwE9NnPPqyXShCc/qYQs2KijZSmHdObjtdzdI3YiacMhjuojo2lqy84
         Zo2mpMAXk/H/mCZKhTGdcHUQAYPV7du3QZbcfs1VKj7ON6Byzg4yk4TcInIJUfIXfX11
         p41A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=nSgbs3kPcnfZyj31V/vFsmqFr5cxslydcBBdWIAuFZY=;
        b=POFJ2CSOq5cx/I41uLSghRf1IlNhskvt+feSi/bMu2BoUA1tSUtf9arjnpbXebSVMZ
         UC9avGQNP1IwCDX3C+r/KF4GJnX50tIqPvFLlOeHyPCl511bv0nGl6kXJqQnezD2651e
         ioQOQaQ3Pn4y9XqHODUyG4musNL0QL5g5Y6u5uvrf9ZSSaJXbwbI+QQ96GjXjxrMVOGk
         z8hu0SPWpmATxc69JiTINPEk4o9flm2U/s7/hslOhQQpxz1lC5FEykUuEqV7KRg9wvhZ
         VfPCjpxeO3clAj1HZKZ/kShajsUvioe3KXl33Vxn4lnDUoHvEXDRAdnaTTz0+zUvePUi
         R6tw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5312DkTOKiAcpzz3Td4vkkFZ50EIvh/1coKH9qTx3zCahCtEh41+
	ARsGtuC1ZIksCHuARj/YWD0=
X-Google-Smtp-Source: ABdhPJxRqFCStqliVvHzHptghQevlLcHguy/mmYn9BdsKDdhN3+ihbmXocbNwoxaBhpO957OfD9pQQ==
X-Received: by 2002:a2e:860d:: with SMTP id a13mr851052lji.414.1625722075457;
        Wed, 07 Jul 2021 22:27:55 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:bf01:: with SMTP id c1ls38897ljr.6.gmail; Wed, 07 Jul
 2021 22:27:54 -0700 (PDT)
X-Received: by 2002:a2e:9b50:: with SMTP id o16mr762741ljj.459.1625722074266;
        Wed, 07 Jul 2021 22:27:54 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1625722074; cv=none;
        d=google.com; s=arc-20160816;
        b=ADug9kZe8UxeE3I/CRU7tk9//mCELaIvLRZ5aq4jrSqYIovcWr+ctQaeHsmaAG1lkE
         pegl72H/Klwa7JjFaH7TbhwRDsgADpMRYBy4nAyErPbXmG9Rk6JQfCZlFG6rfvh1mSxA
         u7xpR9dj9UN2vodGEj1tLC5M/ZdQnnexBaUM6FZ+ApwFC8ukZvbpw9VgsfOx/HWJL3+U
         EXQKd7ggn9Y1vsvZoEK0o9TuzTRaFQePMqjrA6rKWmi7CLIoWQioCheUCtNG4XI6RsyB
         UdMo/7mhGxkH0v9RmAkkDZpldMkfhSZrNG/NCmomdhxMSLcyOhYhQ6oDXCOkFa4WhAMD
         D19Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=jTo7FsfXT+tbK2ZNZzl9RdtGVwfekNig89g/SCO7bwI=;
        b=vmIIkcT8MFRKJlarq2K5LAe7QmP5F/J2zfIigKaz46RLJAgR4VHFi5tXjsMm33Z5cv
         F/8FZbFxAWPPvUvyO1GPAz1yPvjrqlir8EZfaDTOdbWLPVH4pAQNqfQ4CdY05qjCJZGA
         oUUhrPq/mtDV/ERLjwWzLE6k+nb0HfV3LaUq4CXz7snGbbyxRnoigoWR2EXA3YZZg6eH
         USXD+FamZRP+ajq97S8KLpEZYAHb+C4e86fV5cH/YIJKnzGu8kt084VjMmq8AnzXoxf8
         d4JBwOzRIFHBaD6cw09SM5dLCet0vEMjq8m2jgE2tVusNWsqtm3s9ocOFoTe019eE3PT
         WJ0w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of hch@lst.de designates 213.95.11.211 as permitted sender) smtp.mailfrom=hch@lst.de
Received: from verein.lst.de (verein.lst.de. [213.95.11.211])
        by gmr-mx.google.com with ESMTPS id l23si33692lfj.3.2021.07.07.22.27.54
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 07 Jul 2021 22:27:54 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of hch@lst.de designates 213.95.11.211 as permitted sender) client-ip=213.95.11.211;
Received: by verein.lst.de (Postfix, from userid 2407)
	id DB4DC68C4E; Thu,  8 Jul 2021 07:27:51 +0200 (CEST)
Date: Thu, 8 Jul 2021 07:27:51 +0200
From: Christoph Hellwig <hch@lst.de>
To: Nathan Chancellor <nathan@kernel.org>
Cc: Christoph Hellwig <hch@lst.de>, Brian Cain <bcain@codeaurora.org>,
	Sid Manning <sidneym@codeaurora.org>, Arnd Bergmann <arnd@arndb.de>,
	linux-hexagon@vger.kernel.org, linux-kernel@vger.kernel.org,
	Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux@googlegroups.com
Subject: Re: how can we test the hexagon port in mainline
Message-ID: <20210708052751.GA18789@lst.de>
References: <20210623141854.GA32155@lst.de> <08df01d7683d$8f5b7b70$ae127250$@codeaurora.org> <CAK8P3a28_0KJpcLRQrDhFk8-ndxmfk7-Q2_qcRRiYkyh-NNZUQ@mail.gmail.com> <08e101d76842$94f78a60$bee69f20$@codeaurora.org> <20210623151746.GA4247@lst.de> <CAK8P3a2bG64ARjpwQ0ZhQ9P0g8B-=AwcHHAbYBXBS4B6Fy9pQw@mail.gmail.com> <YNQE0YJzC2xmWg+2@Ryzen-9-3900X.localdomain> <20210707141054.GA24828@lst.de> <1ee8fc44-3e8c-91c0-7909-a636757dbda4@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <1ee8fc44-3e8c-91c0-7909-a636757dbda4@kernel.org>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-Original-Sender: hch@lst.de
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: best guess record for domain of hch@lst.de designates
 213.95.11.211 as permitted sender) smtp.mailfrom=hch@lst.de
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

On Wed, Jul 07, 2021 at 10:42:27AM -0700, Nathan Chancellor wrote:
>> hch@brick:~/work/linux$ make -j4 ARCH=hexagon
>> CROSS_COMPILE=hexagon-unknown-linux-musl LLVM=1 LLVM_IAS=1 defconfig all
>> HOSTCC  scripts/basic/fixdep
>> clang: error while loading shared libraries: libtinfo.so.5: cannot open shared object file: No such file or directory
>
> Hmmm, is that with libtinfo5 installed (or whatever the ncurses-compat 
> equivalent is on your distribution installed)? I had that problem on Debian 
> until I insta

I did install libtinfo5, which just gets me to the next error:

hch@brick:~/work/linux$ export PATH=/opt/clang+llvm-12.0.0-cross-hexagon-unknown-linux-musl/x86_64-linux-gnu/bin/:$PATH
hch@brick:~/work/linux$ make -j4 ARCH=hexagon CROSS_COMPILE=hexagon-unknown-linux-musl LLVM=1 LLVM_IAS=1 defconfig all
  HOSTCC  scripts/basic/fixdep
clang: error while loading shared libraries: libc++.so.1: cannot open shared object file: No such file or directory
make[2]: *** [scripts/Makefile.host:95: scripts/basic/fixdep] Error 127
make[1]: *** [Makefile:543: scripts_basic] Error 2
make: *** [Makefile:346: __build_one_by_one] Error 2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210708052751.GA18789%40lst.de.
