Return-Path: <clang-built-linux+bncBDJNHL5JSEOBBGFZYX7AKGQEPELWEPI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x438.google.com (mail-wr1-x438.google.com [IPv6:2a00:1450:4864:20::438])
	by mail.lfdr.de (Postfix) with ESMTPS id 137572D4EB4
	for <lists+clang-built-linux@lfdr.de>; Thu, 10 Dec 2020 00:24:09 +0100 (CET)
Received: by mail-wr1-x438.google.com with SMTP id b5sf1196914wrp.3
        for <lists+clang-built-linux@lfdr.de>; Wed, 09 Dec 2020 15:24:09 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1607556248; cv=pass;
        d=google.com; s=arc-20160816;
        b=MbYn6a2IAAhPdu/ghAF4Jr3AU4chh0Pb7cmqJZ1ZFMPo6yzOfxjSbwPH4dbDY6jxPh
         rOH9Jr/3v2C+UwIwZHtooeba7YLOw4FueEjpv8FbemQExXUrcXJpiAWbWciNP6Ynuvtk
         iewzSp8iA3V4fI43np0nIGYlNK4QHpqyMQuqoYEJ6IwUT6Xhwb4O/gIqV/wYhcegHjvD
         RpgMb4SlQ1XWMQbTQQpC6zSD8cwpRZwhmzB35uzisE76agk7JjUVHfZELdMFUkV8orVE
         AH7xLIdtOOZdnzKU2jvGEcab2up5W0tPeMJf4862XXJtsG61sw4KkvkhBeajshGqRMP9
         i/jQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=45UfpH/9yzw0v9/dYicYylul0PxdHj+8gqMd0a1bK0k=;
        b=mFZ4sS+CbAFsDF3Ybxunm5L6oPYR9l312B+ZiYaujxyQJlMeQEcLhFtMdBayWqLfPX
         x1dAhrc5vTxGfFkvtW3PfD2SSvhVbJlRBN+9ciPNocq47NIe7p537l2cC51BbW+Rr6TS
         pbq4gC6NwF/zF7PoHX4CwRJuqJ034yL23T/WeqgWcfunjZiFHaxGTOe8HBLg91FL+2Va
         OznXjpRk+ReGLfXTLYmsL/ZOoe7WljvbRGMQX5T9cbdGu8I//mleMcOmLdionwxZ6Em4
         umvf+PTkdDohgehUzhrUX7SsNptDwupMVs8AqWLSr+7v6aosXL8zk61rQX2PD97K8yyv
         V7UA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of andrew@lunn.ch designates 185.16.172.187 as permitted sender) smtp.mailfrom=andrew@lunn.ch
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=45UfpH/9yzw0v9/dYicYylul0PxdHj+8gqMd0a1bK0k=;
        b=n22H6pheGfJGxP1APV6l+Jc1zWFM0BJUKtPpkgDhGgNDslRWglDQOoYQxNkFzKn82G
         YhqQJdqN5NJKRrjiPY6pU63tkOALXYsXusp7oN2gX7gYRdaNrErKN/LIYO+VWhGk8GYR
         QQFDMAHF4SEfjUwWHNN7AbmWofDP6sXHph8oz/6n5Ex+R7WvIlVI7DDKrp51oyK+Bgsy
         o0Q7ibq2pp0kQ24vm020TOUuo5oZcGVjhKULLJTUESxDngCS2vKWc6f2dnGRtLl2lyMN
         c1F01/HU7b4I8G9Z5sTxFrJyGLoLdtRZ7vcs8nCOvqF78C9vc3g3YxVsm5wzJ0C2t0K/
         zm0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=45UfpH/9yzw0v9/dYicYylul0PxdHj+8gqMd0a1bK0k=;
        b=JLH4NkEEI8Cq7P60MeoPFfuJQGVBInD5v7M9K62YS1eUmjT6JNyHZ0HgZzlT7JAFEb
         tkGpt6JPnAoCG07Sn9WlDynPdg7W4QABVdD1LSf1/iJamuj40dItxcJr384jcTQ3khPb
         5W1o4jFxpmiAGj/fZUvL5RXUqWOtyxkOIx/NKbQ2goSRzzBmcauLsGxfkxjVZt/fZpj7
         Zwa7vEJ8B4a1hKxJ/3iUy+6o5nRRKqFwa7pM/VIhrYpwP39cJX1HUCe4dyMah39ZP+Fk
         BL/oGsOgXlL8ozPfWSjvtdtHR7rhast+0uBGqH/Hv+WpuS7PBK/SBW+xEPlykRSa0Cbs
         oiTw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532ENAyL9oleqLWqBr7YWGKvFLOw7i26xeDjeIyyFCwV+yYuIUts
	K8OYoiWTe+dcf3eBvUhes7I=
X-Google-Smtp-Source: ABdhPJxUF5Z3dE22PfWKFU3eluJhVWgQHjfERUbyjg6rYQ6JtGMSqQ2/SJIrNeYiA+h4kSl1XK37zQ==
X-Received: by 2002:adf:b647:: with SMTP id i7mr5086173wre.241.1607556248862;
        Wed, 09 Dec 2020 15:24:08 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a7b:cbd5:: with SMTP id n21ls1888665wmi.3.gmail; Wed, 09 Dec
 2020 15:24:08 -0800 (PST)
X-Received: by 2002:a1c:3902:: with SMTP id g2mr5054942wma.117.1607556247982;
        Wed, 09 Dec 2020 15:24:07 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1607556247; cv=none;
        d=google.com; s=arc-20160816;
        b=MV2AHZmcT7j3yklIh4Kh+2e3xEVnTXByaGpC//FibcXcHPoHbVGaAYf7tuG9pwhIHh
         D70x0iH/XgnIWBE3w147Qy9yQWgBPBMPWLC3c7wnL7LLCyKR4MByQRZDcsePvVLUPLwu
         0KL+smr3MsyqR4yY3ghsdczfmasC8rA5RMsDTVjN//qMhLVyDT6EzYnPhF7IO1pgWeHx
         qIdVN88BP7Tee3XrqKrR7MKOdpYKemkh1JZCekIihvxOqdNdql0BbF5Mxk3rsoPzl/8X
         AOPW7ipa8qdsMFOb7nLopEPCxSE9Gma64M7oSR5PszUnlFlGJTIXuBYmf2tMpIuyVOwJ
         5yRQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date;
        bh=inWspN6D7NVKyMI2vm2Xblpgpb1+pMp+0NL/OTg9v5k=;
        b=do6o+YLo/5VI3LHD+gQkCY0p56cw1WPs2/0ISzwTG2KQqTn78BKGdeFiqO1LV2xcfk
         UZDp8xtd4H5xw5NGmESbU6XRkbQBcOdTds1otI64C+6QdpmffNZXXZHQR43FBKe0JiYd
         UhzsVppYfc6Kl2Q/yrHywoKWJeKEweG52SeGvor3iVlidJbYV+JKooTTpQGSkh2497sz
         WtAtIA7ZXcHXxJJjiEKoL5FwViIguUIXDKJIeUqDw2xKzJ3sPKWiN13SlRNcgNv3bn/3
         A73x+L6QhoviE6+eYcYyNAXOjSg7qYoNDZXDxOTF/ukFu74tYIXjdrr/W7q393JpYmgP
         o9sA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of andrew@lunn.ch designates 185.16.172.187 as permitted sender) smtp.mailfrom=andrew@lunn.ch
Received: from vps0.lunn.ch (vps0.lunn.ch. [185.16.172.187])
        by gmr-mx.google.com with ESMTPS id e16si116627wrn.1.2020.12.09.15.24.07
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 09 Dec 2020 15:24:07 -0800 (PST)
Received-SPF: pass (google.com: domain of andrew@lunn.ch designates 185.16.172.187 as permitted sender) client-ip=185.16.172.187;
Received: from andrew by vps0.lunn.ch with local (Exim 4.94)
	(envelope-from <andrew@lunn.ch>)
	id 1kn8oZ-00B8Oc-0L; Thu, 10 Dec 2020 00:24:07 +0100
Date: Thu, 10 Dec 2020 00:24:06 +0100
From: Andrew Lunn <andrew@lunn.ch>
To: Pavana Sharma <pavana.sharma@digi.com>
Cc: ashkan.boldaji@digi.com, clang-built-linux@googlegroups.com,
	davem@davemloft.net, devicetree@vger.kernel.org,
	f.fainelli@gmail.com, gregkh@linuxfoundation.org,
	kbuild-all@lists.01.org, kuba@kernel.org,
	linux-kernel@vger.kernel.org, lkp@intel.com, marek.behun@nic.cz,
	netdev@vger.kernel.org, robh+dt@kernel.org,
	vivien.didelot@gmail.com
Subject: Re: [PATCH v11 3/4] net: dsa: mv88e6xxx: Change serdes lane
 parameter type  from u8 type to int
Message-ID: <20201209232406.GH2649111@lunn.ch>
References: <cover.1607488953.git.pavana.sharma@digi.com>
 <cc16a07f381973b0f4c987090bc307c8f854181d.1607488953.git.pavana.sharma@digi.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <cc16a07f381973b0f4c987090bc307c8f854181d.1607488953.git.pavana.sharma@digi.com>
X-Original-Sender: andrew@lunn.ch
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of andrew@lunn.ch designates 185.16.172.187 as permitted
 sender) smtp.mailfrom=andrew@lunn.ch
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

>On Wed, Dec 09, 2020 at 03:05:17PM +1000, Pavana Sharma wrote:
> Returning 0 is no more an error case with MV88E6393 family
> which has serdes lane numbers 0, 9 or 10.
> So with this change .serdes_get_lane will return lane number
> or -errno (-ENODEV or -EOPNOTSUPP).
> 
> Signed-off-by: Pavana Sharma <pavana.sharma@digi.com>

I see here you did actually act on my comment. Thanks.

But i also said:

> Other than that:
> 
> Reviewed-by: Andrew Lunn <andrew@lunn.ch>

Please add such tags to new versions of the patches. It then makes it
easier for everybody to know the review state of the patches, which
have been reviewed and deemed O.K, and which need more review.

     Thanks
	Andrew

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201209232406.GH2649111%40lunn.ch.
