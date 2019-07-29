Return-Path: <clang-built-linux+bncBD4NDKWHQYDRB7VW7XUQKGQEWBKC5AI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x137.google.com (mail-lf1-x137.google.com [IPv6:2a00:1450:4864:20::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 30EB179A40
	for <lists+clang-built-linux@lfdr.de>; Mon, 29 Jul 2019 22:47:59 +0200 (CEST)
Received: by mail-lf1-x137.google.com with SMTP id l7sf6240945lfc.4
        for <lists+clang-built-linux@lfdr.de>; Mon, 29 Jul 2019 13:47:59 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1564433278; cv=pass;
        d=google.com; s=arc-20160816;
        b=owbXS2VPp55BwchMhkNZzH+howBEQLzPB6r1IDVqnVH4msVXsKDRrhLJyLv+ZOLseJ
         Z2wNjkovB4e6lr6Ega7tUL08HDJJZ9V34kiaDsJ+Mtu0oA+zadU7NtJ9gHD+52KD4liy
         pWNj979L3btdU/pVRMoIvq3NP0zlRJ8H1NOIybNMtzVulU+exSuQuYow67oehyNVGBfo
         DCuLLbQXjmT0AHh0EhhfzBGky/yTQFcAN0sm/VVj5uJD657yl102ur78POXxESbyniQX
         egqdEswFK0ticqdXi6hIvgNIqZ5wKUbOFvwE9dUxznsdT6ADgE5Hal4CuW/fVvBgMkQG
         w4rg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature:dkim-signature;
        bh=nkgf85kXGAOP9HOt7skvZQdX8rcjiHG7eW1OFoCIHo4=;
        b=U1eVetoZNZV8hYHCJo0FLZEMyCqJmSQWpYR2wcY/Kve6nvaXZajgddddtqHPycvF7N
         P1Nfsa3ZdqZjgUT0jMtTn/aX2r55sV9urRlNdUygmqkzBkmGugm4MZDHMgXtPGaEfPLp
         wPM7ERbWL8doM9I608p06DsE2olbYmbOTfjGJoM0iXg4l5UXIlwl4Gsi0m+LsPlLH8+P
         jMkaxj4uyr3GznlZHBlOkTTVDHLJcF4xWKXrSYjSPBfHYKscExl0SiTPRV5M4i3zC1qk
         NnJpfE300IiCc/0D6UcXdSesudcN1ULjAEy6aZcL/GrPZcHExW0VqQbhAXEaoEl07Bs3
         7tEA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=bqYg2vf6;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::443 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=nkgf85kXGAOP9HOt7skvZQdX8rcjiHG7eW1OFoCIHo4=;
        b=fbgNzaQSwcfBCGzvhvEQ58S0X3Tfy0coYhLhW9g2RWfBE5/0BF4mpZ38c3a2bHS6x9
         kzmFxYXMIC/gp9X5n3OOBTvMPdlR1A05iymWIUKgUb2VfQwE6+p2pyc+Zlp7o3DrSP+b
         QLzfivBHIU71kJO3aKzMQjvgtWoxenP3/3zwc/YYwws0YsrU9FkqqdVE5gDsvbpX31yf
         RNx0F85yTD6clHrQH3VQlynLTN1SzD2RNbnb9yQ9ngiBLK6TSUBxeabe7Azp+gbLPVi0
         HWLOqGRNtEiKoPAuxMrCAAKk79RTtokPbJQyrEuThSA7HnhN4jJ6DpvcFtFModM6TRgv
         I6cg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=nkgf85kXGAOP9HOt7skvZQdX8rcjiHG7eW1OFoCIHo4=;
        b=IBjAQv7tPc4DeNGUtd7vdmZiTfSJgQdX0zy9edVVQAZYSbXnfQg399XIObTSMATAYm
         Jy/4kLH6Of1BTQ2PJsAyBmtjOkZmAW+RSyya7yOA/myFRgvb4IibGYZ70KhL3SdimcNq
         RKMGplquMPbhgZmqjSwS0mqZz02q9Y7S+khzNRC5vcbgyavt9SDhK/zfXiwBlRd+kxIb
         kM37QP6QRS1v3PUk3DHQQOIPG9o98AaxKn5XJFGEvL1Dk5vBXUuefLmjtcEYijYcTPKm
         DmlobOrBrdmimhnJNWQwLnX+zzSwUD7FL/vsOMzfDnbqAh8yrC826dwBtVJ7J80bhA/M
         GNHw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=nkgf85kXGAOP9HOt7skvZQdX8rcjiHG7eW1OFoCIHo4=;
        b=oNiMNpOUjxuUfH/F3oybsqj5zWPX9m/V/AR3Nx56QMwXyt6dYYJ1Kd5XMD897OrHmR
         ZUE6Vn3PI84JjqdKRP/dW01svh8W9USw+RvUbGgzIyIbeYd+EGIdO+Kh9yDIWKjjDLuk
         JLJ1Fu5aH76U6+qV0vGn5H1upEKSidlhlMCR0Jmh7Jrl/MwHVHLLcQM6gWgDTj7SjTyA
         FsN9RUaxjSGxj/anOqlFwTuFeexUEbKWG4omEKFC44HNyumUEfMNbcB2pw+3gaWUMgmH
         uNjmrIykW71jsTmXEf/ycbVj4DCes5C9k/vkDgyExtsQtOfzsn9P7zJkZsiUIaveVQDw
         Rlkw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAUB8drfXya0v1Uq2y6jf6QnpeSGVeZByJLr+PqJ1mH8AtMzl/Kw
	tjmp6UcNmgRmjwWls8HXwD4=
X-Google-Smtp-Source: APXvYqwmEOXMywSzPS2Zkzup0WCBNMyYXtStyrE8qb9tBK4xePQf/h+s5np+N2UbnnA1zLi8XFjfiA==
X-Received: by 2002:a19:c213:: with SMTP id l19mr34424060lfc.83.1564433278712;
        Mon, 29 Jul 2019 13:47:58 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:9dc8:: with SMTP id x8ls7088208ljj.2.gmail; Mon, 29 Jul
 2019 13:47:58 -0700 (PDT)
X-Received: by 2002:a2e:8847:: with SMTP id z7mr59600845ljj.51.1564433278273;
        Mon, 29 Jul 2019 13:47:58 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1564433278; cv=none;
        d=google.com; s=arc-20160816;
        b=TXxLa6VOrQlZhQ10ThBGTetc3859BcI+OEkcLxK86TtesbCQT4iRuuhNwR//Jn5/Bi
         A2lZL2DVxuwC5wCe1yWdGHvC0DvEM+TypMO3PXjSJgPt12PpicaQr4XpINOBjSR9ZWPY
         ckrNLTSwxxzMlrWPMXlK22EfLAeqmp4iRNf2yWZ6qiwUjkAjfXJ5ZsoyeEjiBfzEuvUQ
         buPi9RZlad+hGOVQBXJBg3chh3/BsMFZ/NtqjzaJRLo+rPNf83UqE201OBqxq383024/
         2xu5JsibPIGblrPgcUON4ceHZ7YHh8i6YMAHemB7LYqulY06cF6MjhXg+DKGL3RBORWM
         CHPA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=RDzvvOLuO0FrlKWxE2OmL3qzW6ImORMj+8bQNrB211w=;
        b=O1gT2d1PkMA2u02oivRIyQVTWx7Thqhmj4ljUctnzipc79nSkMAKmDwCrKVgYjanVB
         sHySQ29UGWOZIvNdosxk3XCHVehxjBm/X9LsNsUoLXPw1pNPfGIH2nvxxS+jgpHqICFU
         VO1NwX0x+2QUONzaDDDIZra7Buk9rZPYRd7t+tzUMJ1WEksOPO+kZZFTMBIBaXphhvsz
         7TR7xjr7p4UwGVUlKlLBoiAAtRR08EV0aY4EJLkBVwuwN/+MsZZm057nkhebFQ5G2WLU
         p0gVDpinf7n1/wXtYLgMG3Op+D7cp8zMFjGUDV4ILHJ7jKeyILtV9b3uvn6K1Ky56o7y
         3J4A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=bqYg2vf6;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::443 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-wr1-x443.google.com (mail-wr1-x443.google.com. [2a00:1450:4864:20::443])
        by gmr-mx.google.com with ESMTPS id h11si3330609lja.0.2019.07.29.13.47.58
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
        Mon, 29 Jul 2019 13:47:58 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::443 as permitted sender) client-ip=2a00:1450:4864:20::443;
Received: by mail-wr1-x443.google.com with SMTP id p17so63287101wrf.11
        for <clang-built-linux@googlegroups.com>; Mon, 29 Jul 2019 13:47:58 -0700 (PDT)
X-Received: by 2002:a5d:6a52:: with SMTP id t18mr20910659wrw.178.1564433277503;
        Mon, 29 Jul 2019 13:47:57 -0700 (PDT)
Received: from archlinux-threadripper ([2a01:4f8:222:2f1b::2])
        by smtp.gmail.com with ESMTPSA id s188sm51874539wmf.40.2019.07.29.13.47.56
        (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
        Mon, 29 Jul 2019 13:47:57 -0700 (PDT)
Date: Mon, 29 Jul 2019 13:47:55 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Michael Ellerman <mpe@ellerman.id.au>,
	Christophe Leroy <christophe.leroy@c-s.fr>,
	Segher Boessenkool <segher@kernel.crashing.org>,
	Arnd Bergmann <arnd@arndb.de>, kbuild test robot <lkp@intel.com>,
	Benjamin Herrenschmidt <benh@kernel.crashing.org>,
	Paul Mackerras <paulus@samba.org>, linuxppc-dev@lists.ozlabs.org,
	LKML <linux-kernel@vger.kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>
Subject: Re: [PATCH] powerpc: workaround clang codegen bug in dcbz
Message-ID: <20190729204755.GA118622@archlinux-threadripper>
References: <20190729202542.205309-1-ndesaulniers@google.com>
 <20190729203246.GA117371@archlinux-threadripper>
 <CAKwvOdm7GRBWYhPy4Ni2jbsXJp8gDF-AqaAxeLbZ03+LvHxADQ@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAKwvOdm7GRBWYhPy4Ni2jbsXJp8gDF-AqaAxeLbZ03+LvHxADQ@mail.gmail.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=bqYg2vf6;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2a00:1450:4864:20::443 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

On Mon, Jul 29, 2019 at 01:45:35PM -0700, Nick Desaulniers wrote:
> On Mon, Jul 29, 2019 at 1:32 PM Nathan Chancellor
> <natechancellor@gmail.com> wrote:
> >
> > On Mon, Jul 29, 2019 at 01:25:41PM -0700, Nick Desaulniers wrote:
> > > But I'm not sure how the inlined code generated would be affected.
> >
> > For the record:
> >
> > https://godbolt.org/z/z57VU7
> >
> > This seems consistent with what Michael found so I don't think a revert
> > is entirely unreasonable.
> 
> Thanks for debugging/reporting/testing and the Godbolt link which
> clearly shows that the codegen for out of line versions is no
> different.  The case I can't comment on is what happens when those
> `static inline` functions get inlined (maybe the original patch
> improves those cases?).
> -- 
> Thanks,
> ~Nick Desaulniers

I'll try to build with various versions of GCC and compare the
disassembly of the one problematic location that I found and see
what it looks like.

Cheers,
Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190729204755.GA118622%40archlinux-threadripper.
