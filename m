Return-Path: <clang-built-linux+bncBAABBNFU6GEAMGQE2PCABPA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33e.google.com (mail-ot1-x33e.google.com [IPv6:2607:f8b0:4864:20::33e])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A7863EF703
	for <lists+clang-built-linux@lfdr.de>; Wed, 18 Aug 2021 02:54:14 +0200 (CEST)
Received: by mail-ot1-x33e.google.com with SMTP id a4-20020a056830008400b005194eddc1d4sf225034oto.23
        for <lists+clang-built-linux@lfdr.de>; Tue, 17 Aug 2021 17:54:14 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629248053; cv=pass;
        d=google.com; s=arc-20160816;
        b=Lo/e8hymhW4fIbINRISiHR/48+vxiszly8a0jw5o/goQe3Y8yY7tz7uhVU8GyJKqhk
         ZBTFWqoAj+GCxIyvtAOsdOhSNwBvc5w7t98EpYLBGD4bHElSv/mR/55E23//OCZtkdYa
         dYNaiYHcLf8OWVqvTXyH3SB24vSrNI6gzu+wWD9vjiykBN+tvD/rQ5tZe+DVspDvDItf
         PPgBlMNPNrkx8hudL9hXgsrk8HnHRqkoOr8V+zzVloLBdCRIIioTgsqPDNeePy6YWndb
         PTRRzUVpcvhSghIyTAneyYVsLOxssZcUTrM2U1KqfNypPtkP4XbTzsI2UV8Twp4LGnis
         Dknw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:message-id
         :in-reply-to:subject:cc:to:from:date:sender:dkim-signature;
        bh=CB0Ytvb/kawmD+FUj8/a0TRgXq0kRQ+62DCXO2u9ZOo=;
        b=CuueCnB8cYnDo7pg7NHKGpQG/wlPbInl/O6M8ExV+f1baVY2Zz4pyalIgw0T6coiI2
         gi5DTv8PDxfLUumAkeqECkGx+KPat8tX61u9EvxfZrZuIS3g9d74EMYT//HjoAaXNFIa
         J0hLH6vLeAhL1PZbJSI4FuBbJHJWiV6AS6YD7aBScZG+B0Cu7vgxppsPMAvl/LpvmtL8
         ltHE0DkJpKBkjHbGqtkkmjgpUtLce1m0FV1WxVsrIsMcxamPLM0ZheCW+xa0eUGYxqBK
         GyJjv51zC5lMFOJQKTP16H1j2iIG2sF/vaID2G5+iMCzQzj7tqM1e3ZebsVsgT6e52Xs
         mSBg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@messagingengine.com header.s=fm3 header.b=Ov5ucLyu;
       spf=neutral (google.com: 66.111.4.26 is neither permitted nor denied by best guess record for domain of fthain@linux-m68k.org) smtp.mailfrom=fthain@linux-m68k.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:in-reply-to:message-id:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=CB0Ytvb/kawmD+FUj8/a0TRgXq0kRQ+62DCXO2u9ZOo=;
        b=aHuq2dXqGbU3NdVC5P10+T85DCAnOTO8Gp71HsoxftZlpDmf62OajIL6Eh+d7v/Sc8
         WP7a9gC/7u7HFsNnDwbfExEG2gU58b6ZMJv5jl+g9VVxvkQdcOmtiBgFEfdZ+yGlCJM/
         XxQskjmgGXJyYW8iVRZMd2ObTuAv1rILZ4YR5DGscB9bQLSFhDJLvcM7HxobHRkCcjrP
         PoAza8RAOeIfQ2xUleWJ2pnC3LtyST68RcKJ46Te2Ucmm5/We2kstWxN7WYixDyz81b2
         moW5Dfw7zoTllMPyqEnGlzliN8RzWJ94JH7Hvu/mBKz1OcOuvgyZ//yqTkougiY1X2xa
         sSbg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:in-reply-to
         :message-id:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=CB0Ytvb/kawmD+FUj8/a0TRgXq0kRQ+62DCXO2u9ZOo=;
        b=oWlyEyUnWA5udT+21CX7Gy2n7O20XZ9DtyFwGmapJlo0zkFZlP0JOeMlNO7mzmEs0c
         k6tErcJ4UxxmHohfOkKpBWoxUFcozQCdls8vpS76LH3++zfA7Kb6V22Lnxnkw4rfTksE
         uEu0ootgbUt9+cMtQyu1/Rdu2LwGZaUy/HNMdmWdZxg+ThTO5HhAgwZ1hiF7zW5zW7dS
         OCzNXiKpQy9Fd/FekBRkHFsIZp/2Dq7gyLS0SHST8myjgvcEMxPo++2LLB7Hw4R5Jnap
         Er2UKwNR9D/ZgfmjF8cvr4Z/unJ81UMjZtwpw/WbTxqHWHLnkGWjbgoWkWxJn9tAkBQT
         vTuA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531r41UEqg1GFgiWoJHCdilWnsSyP6vSL1nY0vUIKf/jft+5iSBY
	8spZbuMzsB4TUgFfBa1ebsE=
X-Google-Smtp-Source: ABdhPJwOMkzO7DZotML/jW1Z3XXGUiXkF4r1UEhr6rjg4jxTnfMKZe247cvkfuSGuFjUXz+yiz4bnw==
X-Received: by 2002:aca:a996:: with SMTP id s144mr4813166oie.175.1629248052854;
        Tue, 17 Aug 2021 17:54:12 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6830:2689:: with SMTP id l9ls130927otu.8.gmail; Tue, 17
 Aug 2021 17:54:12 -0700 (PDT)
X-Received: by 2002:a9d:7653:: with SMTP id o19mr4910401otl.236.1629248052388;
        Tue, 17 Aug 2021 17:54:12 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629248052; cv=none;
        d=google.com; s=arc-20160816;
        b=AJTMVN0IH76Qot/snz/GiP5DkWAhBI02UmkRQ1F/q1DT9vKs8oaF9cJ0h8Nay47HCT
         xyYiYVrX1Qvy7aYqjSvJVL58z6uJe6koAedxn/JOAKgcE3c1vpAJogPg015kzBMcX6TT
         iarBiQIyVhY6jkI849KbKBtSl4hzmEeytvUza8Xyb+lNxjJKKNfwCJbDOvvtx3srLl1Y
         65OuVD8J6/q0uYwFAtexqe+/JckJLmD3cUrJvTPPPaESCX2cRZ225+K1lgS81q2hLFyg
         mG5+cJILXCsPcV7QO1KsHTRqA8gJXrbG/WwbOpgAcR3C1ME8gi53IoIA+Xz27EJIbHEc
         n9Zg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:message-id:in-reply-to:subject:cc:to:from
         :date:dkim-signature;
        bh=Zz+2Cl8Uy7Fh+ejBShZ+UblbJYguC8B5HiE28CeGbhs=;
        b=x9eGD22sc7NTBcjRlY41x6MQhWTcnrM4rqRyyFjmteSxbXiNTtZYFJTfThyAg6CJkO
         HZw3SlGo5lcIYjiNbahp7VsCppwPsYSgDiK9HBhqZ983cEoCfzOmnXDRIvvztA/80D47
         mbqOrj/ThP4InKdW4ppHJ0zGIFmdccN4BVD6VcnECPhe9GgrrV5HydnQhRWJ1O1j9QDB
         JVsidBUyK99jou700nNNHc/SBGdyEiWB0SyOe7+ar/f5SKZN8dYmlrVs/uqL9PVX9gCm
         oZBvD7u3MrbXiWQkmxLeVxyyYaBXUJCRD+C40rXCeRmzC5Avf0H6/VBx0KC5nNNFAwzK
         ws3g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@messagingengine.com header.s=fm3 header.b=Ov5ucLyu;
       spf=neutral (google.com: 66.111.4.26 is neither permitted nor denied by best guess record for domain of fthain@linux-m68k.org) smtp.mailfrom=fthain@linux-m68k.org
Received: from out2-smtp.messagingengine.com (out2-smtp.messagingengine.com. [66.111.4.26])
        by gmr-mx.google.com with ESMTPS id bf14si302474oib.0.2021.08.17.17.54.12
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Aug 2021 17:54:12 -0700 (PDT)
Received-SPF: neutral (google.com: 66.111.4.26 is neither permitted nor denied by best guess record for domain of fthain@linux-m68k.org) client-ip=66.111.4.26;
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
	by mailout.nyi.internal (Postfix) with ESMTP id AA9665C0178;
	Tue, 17 Aug 2021 20:54:11 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
  by compute4.internal (MEProxy); Tue, 17 Aug 2021 20:54:11 -0400
X-ME-Sender: <xms:MlocYfKaaAUsMCNVFDRBtoRVPsWJ8Xaasf_96byai6Vb41MHindPiQ>
    <xme:MlocYTKBzUNcf_NMrBBH_kxjZaQklzLcFd2tntZ9kRWsNNTem3gbLfKn41qccmWzz
    TzrIL8FFWEcFbv7sUQ>
X-ME-Received: <xmr:MlocYXtGC-6uxQvovZpaqmL8Gklzs3faBzI7OEsjI0OUthfUhFRKJWZg1srzI0wt4EtkOfyIzm033DSiERqZw-xGeeaJOnY4dPGyHA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvtddrleeggdefkecutefuodetggdotefrodftvf
    curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
    uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
    fjughrpeffhffvufgjkfhfgggtsehttdertddttddvnecuhfhrohhmpefhihhnnhcuvfhh
    rghinhcuoehfthhhrghinheslhhinhhugidqmheikehkrdhorhhgqeenucggtffrrghtth
    gvrhhnpeffudfhgeefvdeitedugfelueegheekkeefveffhfeiveetledvhfdtveffteeu
    udenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpehfth
    hhrghinheslhhinhhugidqmheikehkrdhorhhg
X-ME-Proxy: <xmx:MlocYYbwZmSZDWItsWow3fqV22Az3B3y8kII2odtPcP43eyIFO9ucA>
    <xmx:MlocYWaRuGdaMt-YF2sdWsgei4GuQzvg3uBOOzD7l9j7RLsWp6zmBA>
    <xmx:MlocYcAoJvvZMzDNQ9CyCuexFloG5cQjegdXY7VIF0_xbN4R04gLYQ>
    <xmx:M1ocYbOg2tGoOQXd03i6EM3LvTdiwltL4pJt6RvVkm--oyEnpnBvAw>
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Tue,
 17 Aug 2021 20:54:08 -0400 (EDT)
Date: Wed, 18 Aug 2021 10:54:06 +1000 (AEST)
From: Finn Thain <fthain@linux-m68k.org>
To: Nathan Chancellor <nathan@kernel.org>
cc: =?UTF-8?Q?Kai_M=C3=A4kisara?= <Kai.Makisara@kolumbus.fi>, 
    "James E.J. Bottomley" <jejb@linux.ibm.com>, 
    "Martin K. Petersen" <martin.petersen@oracle.com>, 
    "Gustavo A. R. Silva" <gustavoars@kernel.org>, 
    Nick Desaulniers <ndesaulniers@google.com>, linux-scsi@vger.kernel.org, 
    linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com
Subject: Re: [PATCH] scsi: st: Add missing break in switch statement in
 st_ioctl()
In-Reply-To: <20210817235531.172995-1-nathan@kernel.org>
Message-ID: <7843ce6b-92ae-7b6c-1fc-acb0ffe2bbc0@linux-m68k.org>
References: <20210817235531.172995-1-nathan@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: fthain@linux-m68k.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@messagingengine.com header.s=fm3 header.b=Ov5ucLyu;
       spf=neutral (google.com: 66.111.4.26 is neither permitted nor denied by
 best guess record for domain of fthain@linux-m68k.org) smtp.mailfrom=fthain@linux-m68k.org
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

On Tue, 17 Aug 2021, Nathan Chancellor wrote:

> Clang + -Wimplicit-fallthrough warns:
> 
> drivers/scsi/st.c:3831:2: warning: unannotated fall-through between
> switch labels [-Wimplicit-fallthrough]
>         default:
>         ^
> drivers/scsi/st.c:3831:2: note: insert 'break;' to avoid fall-through
>         default:
>         ^
>         break;
> 1 warning generated.
> 
> Clang's -Wimplicit-fallthrough is a little bit more pedantic than GCC's,
> requiring every case block to end in break, return, or fallthrough,
> rather than allowing implicit fallthroughs to cases that just contain
> break or return. Add a break so that there is no more warning, as has
> been done all over the tree already.
> 
> Fixes: 2e27f576abc6 ("scsi: scsi_ioctl: Call scsi_cmd_ioctl() from scsi_ioctl()")
> Signed-off-by: Nathan Chancellor <nathan@kernel.org>
> ---
>  drivers/scsi/st.c | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/drivers/scsi/st.c b/drivers/scsi/st.c
> index 2d1b0594af69..0e36a36ed24d 100644
> --- a/drivers/scsi/st.c
> +++ b/drivers/scsi/st.c
> @@ -3828,6 +3828,7 @@ static long st_ioctl(struct file *file, unsigned int cmd_in, unsigned long arg)
>  	case CDROM_SEND_PACKET:
>  		if (!capable(CAP_SYS_RAWIO))
>  			return -EPERM;
> +		break;
>  	default:
>  		break;
>  	}
> 
> base-commit: 58dd8f6e1cf8c47e81fbec9f47099772ab75278b
> 

Well, that sure is ugly.

Do you think the following change would cause any static checkers to spit 
their dummys and throw their toys out of the pram?

@@ -3828,6 +3828,7 @@ static long st_ioctl(struct file *file, unsigned int cmd_in, unsigned long arg)
 	case CDROM_SEND_PACKET:
 		if (!capable(CAP_SYS_RAWIO))
 			return -EPERM;
+		break;
-	default:
-		break;
 	}
 	

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/7843ce6b-92ae-7b6c-1fc-acb0ffe2bbc0%40linux-m68k.org.
