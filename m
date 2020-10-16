Return-Path: <clang-built-linux+bncBDJNHL5JSEOBB2OUU36AKGQE2EM6LHI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x23c.google.com (mail-lj1-x23c.google.com [IPv6:2a00:1450:4864:20::23c])
	by mail.lfdr.de (Postfix) with ESMTPS id 7AE562906E4
	for <lists+clang-built-linux@lfdr.de>; Fri, 16 Oct 2020 16:12:59 +0200 (CEST)
Received: by mail-lj1-x23c.google.com with SMTP id 14sf1225158lju.6
        for <lists+clang-built-linux@lfdr.de>; Fri, 16 Oct 2020 07:12:59 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1602857579; cv=pass;
        d=google.com; s=arc-20160816;
        b=rV1xdDgQ5l62zKtRnleMfTiEL7f4wCUmI0vJ/W/UhPqNBUkyCId6WX8A+eoV4/Tdur
         O6VbXcGMTokhYuxn3qShucwcZ4hq2VKiQAFUQQ0o/KhHskb/6UpbRESAqOPtAzetC2az
         +nmtznb5nES9BKZ7fzCldsRyRhUl6qyYN6e9wa3Epea0JMkjWcF8DbCNdJnZ5/KsRjS2
         56uQWfnaBxuwYLD2RxkK9R0Wsjv3NOlnq2ECQ+2/R6b2D7gqYfgrCnqaIFZX4LbXZL0v
         RLaOkprntYnIUte8RFWnqUtoQpRwlnrKSTVkllHyljmsvSCahQhd1x663mx6qsZ9+xjU
         /uUg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=8efl0W7Da3U7oPcdhWZlm0Y2r+XqQZzbNQcjnypqs6g=;
        b=QFoCnCxPBuW/qqswYpCVCW6xzhDxXzgIq58YPCtzl24YI2gFSDT16uvsNTTi9pX5SY
         d8gHoSk34OY4NAPzOPHxkh9QkBnV+sR5p3FHDvACfSiQ1HlZUd5VosQFP67+2TQ1Wcn9
         rsMBmOJhoeL/xPrFnbNcSsHRkMmWtPlslSGWgLvYpN+v/vAGnFrSpE0LZq6Nm355E2fg
         6xSqO2fxiVHc0nqWdWzxwrcjXhN7KcQgHoSQBtddzSoPs8NmlYh2biktXJzYEDmhDyDD
         24Wcw3/DBEZfpYaq2+VNi4qLuIpbdnVg24sqn8I1y1ZKuj66JU8vcBXuWqdumJ0hwCKV
         hLZw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of andrew@lunn.ch designates 185.16.172.187 as permitted sender) smtp.mailfrom=andrew@lunn.ch
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=8efl0W7Da3U7oPcdhWZlm0Y2r+XqQZzbNQcjnypqs6g=;
        b=oRP7uVgT3OsTH0gAxfJlCTuikWOC0cIOiDBD2db/CBkJx0hqglmnfGZZczXhILpgmM
         LnYk+mri4qIw/EWkLUDYDoWFfkuLGnBBVZnQ3JtvreUN7UjVQX3fuxxnGZo4YbwJsyxI
         ndwFBkdSeP89oFyYKfKPq4WLqQk4Gh5mCrvpLviZ/fMI8G6h1SAhzbDsqpowOpa72xmW
         vnswTWLx4QCoGtaJWAvio+082W333iSCo/Z8lnGeuEwUGSDgSTUVhrl1jThTRwZAo82u
         +cMPj/IzwavDGcTS+HNMZRjtfsgRWv1GT5LmXBc01DNin7Hn7mIg8DzDG9I5gCV9D+ic
         YPDA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=8efl0W7Da3U7oPcdhWZlm0Y2r+XqQZzbNQcjnypqs6g=;
        b=WlHRhRKNrBFtR1UWvIIoNiwe8dwajhO5DBg42xZedo7HMDbIknN5KS44qgfxqkkgoq
         L0jjUAgJCJyLOm/+1BQd83Sa+y4hjMYH/iAOYhJ94aoK7qVnY2YbDDAIZORh0WHUvqXK
         HEqcTgZ5cCKPGnB4Qmxx+cJlvNxwrlamLAADHcx1Ni0ceDt7dzbdcj7CzRRJywZ7m2a3
         wbBDqnBGZWUokGEK84bqEatbCNl6vUgNQm9GpQvoGZEDw3NvzcImKk1bKZIavcy3CIYm
         w0FkkH/VF55KO7/BPJOrkbISxpus/XMfBYZ1V83Izi0oDD1X4rXQUelJuX3kZbDRs6rj
         WaBA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531VGKYxGcFEs43Pgv+NN99NeFS1aXEbndPyHMdhA1mdmf+Mfgal
	Ow8abGFVMIMv7DNngXRYpm8=
X-Google-Smtp-Source: ABdhPJwti/Zomwez/zNaWoUPGvyvRSfn1Z9XidxcLRJMA8U6sqDaCBIZ9w6tU9x7EYpFsAD2ZabojA==
X-Received: by 2002:a05:651c:1a3:: with SMTP id c3mr1742406ljn.366.1602857579033;
        Fri, 16 Oct 2020 07:12:59 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a19:84c1:: with SMTP id g184ls1573845lfd.3.gmail; Fri, 16
 Oct 2020 07:12:56 -0700 (PDT)
X-Received: by 2002:a19:a0b:: with SMTP id 11mr1569751lfk.110.1602857576797;
        Fri, 16 Oct 2020 07:12:56 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1602857576; cv=none;
        d=google.com; s=arc-20160816;
        b=ZUWNcI0Mgt6xippU0CpyRHJSWktYltiSkxMAVg018cLenknLUfcfMV46v1CRr9pqUm
         MKKnbFnD0PPJomHT/NqwlM8J7zdp/h77iAXrdeoPKuyP9LedSB+hg16nqwhtuwpZEywd
         zfXp1Ft1dseBhT91dnDYW3DBCXqtaaKnxz+4nVPylvPwhSqkq/1ASROfiXzDlkx5oVuc
         Ybf4XS6XSsYRe7pMDi6nMIw2kC26q7XNtdTY8mLc4vUvVO0y56kHG3VRKAHK8KrlDhmR
         CxAHvZkoTNKctzluPMDuGTL0nQeZ7BhLweZCUKLp4o4UI0/Z1pso8CzKvI75zwERM1OX
         mt2Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date;
        bh=cZQTaJHSeBTjOnaFFcwl2wb2kJzy9WD43MkGtkkklxY=;
        b=vOHaEaJOnDrB3PUe9h1uMna02m8H8j7+sIhoS/XzkBhE3MasoF//i8D+H7DrNcoPoP
         QvdnfXFuruvBOYCNFU7ntbtNFokNT97793pgUassw/uQbzQMw6qileD9XepMK/IpSXUv
         dBLHOVMstDE5EIGtrsT95BLa3zGwTn+1niPhWsYaRzLn2tx34oygOXmTCIJwKmGNlaV+
         X2DjDIxo7m9Celj47NT+MBEi2ULfqFDt8jBesyBXx5PwK7bPcGBdBT/TChbBqtY56ZlC
         EMg/a+732BgbHCFHSeUHaTHUSlR4NzetFDdaxzvzQQgrbPkKhFrlQ8lhcfuEjweBhMbF
         wo8w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of andrew@lunn.ch designates 185.16.172.187 as permitted sender) smtp.mailfrom=andrew@lunn.ch
Received: from vps0.lunn.ch (vps0.lunn.ch. [185.16.172.187])
        by gmr-mx.google.com with ESMTPS id r22si57459lfe.0.2020.10.16.07.12.55
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 16 Oct 2020 07:12:55 -0700 (PDT)
Received-SPF: pass (google.com: domain of andrew@lunn.ch designates 185.16.172.187 as permitted sender) client-ip=185.16.172.187;
Received: from andrew by vps0.lunn.ch with local (Exim 4.94)
	(envelope-from <andrew@lunn.ch>)
	id 1kTQTF-001zeb-BZ; Fri, 16 Oct 2020 16:12:37 +0200
Date: Fri, 16 Oct 2020 16:12:37 +0200
From: Andrew Lunn <andrew@lunn.ch>
To: Masahiro Yamada <masahiroy@kernel.org>
Cc: Arnd Bergmann <arnd@arndb.de>,
	Nick Desaulniers <ndesaulniers@google.com>,
	netdev <netdev@vger.kernel.org>, David Miller <davem@davemloft.net>,
	Jakub Kicinski <kuba@kernel.org>,
	Michal Marek <michal.lkml@markovi.net>,
	Rohit Maheshwari <rohitm@chelsio.com>,
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>
Subject: Re: [PATCH net-next v2 1/2] Makefile.extrawarn: Add symbol for W=1
 warnings for today
Message-ID: <20201016141237.GD456889@lunn.ch>
References: <20201001011232.4050282-1-andrew@lunn.ch>
 <20201001011232.4050282-2-andrew@lunn.ch>
 <CAKwvOdnVC8F1=QT03W5Zh9pJdTxxNfRcqXeob5_b4CXycvG1+g@mail.gmail.com>
 <20201002014411.GG4067422@lunn.ch>
 <CAKwvOdmdfwWsRtJHtJ16B0RMyoxUi1587OKnyunQd5gfwmnGsA@mail.gmail.com>
 <20201005194913.GC56634@lunn.ch>
 <CAK8P3a1qS8kaXNqAtqMKpWGx05DHVHMYwKBD_j-Zs+DHbL5CNw@mail.gmail.com>
 <20201005210808.GE56634@lunn.ch>
 <CAK7LNASB6ashOzmL5XntkPSq9a+8VoWCowP5CAt+oX0o=0y=dA@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAK7LNASB6ashOzmL5XntkPSq9a+8VoWCowP5CAt+oX0o=0y=dA@mail.gmail.com>
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

> One drawback of your approach is that
> you cannot set KBUILD_CFLAGS_W1_20200930
> until you eliminate all the warnings in the
> sub-directory in interest.
> (i.e. all or nothing approach)

Hi Mashiro

That actual works well for my use case. drivers/net/ethernet is W=1
clean. So is drivers/net/phy, drivers/net/mdio. Developers generally
clean up a subsystem by adding W=1 to the command line because that is
the simple tool they have.

And my aim here is to keep those subsystem W=1 clean. I don't care
about individual warnings within W=1, because those subsystems are
passed that stage already.

    Andrew

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201016141237.GD456889%40lunn.ch.
