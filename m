Return-Path: <clang-built-linux+bncBDJNHL5JSEOBBREW535QKGQEJ6R2IPQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x140.google.com (mail-lf1-x140.google.com [IPv6:2a00:1450:4864:20::140])
	by mail.lfdr.de (Postfix) with ESMTPS id 14CB52841E6
	for <lists+clang-built-linux@lfdr.de>; Mon,  5 Oct 2020 23:08:21 +0200 (CEST)
Received: by mail-lf1-x140.google.com with SMTP id g7sf3252799lfh.20
        for <lists+clang-built-linux@lfdr.de>; Mon, 05 Oct 2020 14:08:21 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1601932100; cv=pass;
        d=google.com; s=arc-20160816;
        b=jrgNYF9uAGdrFwk6dOTFR8O+0uITgcdl4k7KjvgiXVZxexGnouOysV2u9pwotcGuD2
         voYcjM2ZhEQqOZ+IYw4J+uJzQddqG3PzMuAiTdiGI9egi14WnKAxHA3yVtxyqhEyYktB
         Mfqv3pFJ3aWWsaabKbfywYKZH1p2mZJqzbc9iIZhm2Te8kjaJ+8fx3EQkq/X/kwxXImP
         fROlzgPBfajm2DE8bhVTjQEL21V8oCpwk4tENHtIsDlz9OFiSA03q8+9Rv0v43N5mk5B
         EX+2TGNN+bNN/aPtmcyHYE/s6RE2PRIWT2os7qwhX5vymuuFuCHgWKuRqoPT9qhkGOmO
         JnVQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=pTDOOlelqDJSNIeDOQViWM4O0XdQHz82uyUkOx1lnzw=;
        b=jz9l6rsoXfkRO9PX5gQBV6n24AjNX/nF8rjEaQbr1kOICrVuQPtqrBOA4J2W7NqVG6
         VJU/hdmdpTSAJyMxOh2qMDrrls87SmD3slREBgsM89su5f5ah01Y+UueD7E0Tzkz/xGo
         PNwvyzslDy8ozXngelETM/DqF4s/DCLu+FymiECrxJm1mFQfsD6EVzEY/0VIbRFi1a6C
         bVRd1M7vHcnNAddVqRkghwkXpE5qzancg94vgaP3c5L2TqS25jiQME8ygFixMinuTXeB
         doR2QyRsaNSB2GHNZNk58b6In0xC26HcEd5xMM1vQCxIkBUsPetzV2TdHba1nVx+qo1i
         5UaA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of andrew@lunn.ch designates 185.16.172.187 as permitted sender) smtp.mailfrom=andrew@lunn.ch
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=pTDOOlelqDJSNIeDOQViWM4O0XdQHz82uyUkOx1lnzw=;
        b=ZRPFXABNiCtPQv6RGocWPrgc12KTgkj9hkYbqz8XPvm8YhCnH/NWjpM0eGhPVBoQip
         2R2OCj8tAC839uv8CSjE0T+qZPlLjOGu5FY1hje8D9cXnN9utFi/l38w+1OURFJj5JhR
         oVy9eTFDwRroV6xt4V04l87+R0dC/ILHBPwEb+6f9AgHwti+oD1wHFCn78+0gT3fzq6I
         WEGLVHFZfxm3PCs0odl5lAzq7pk44E4V/TG07rR0zdwgTGvZ4R3RIwYsNopRPSmKW/q1
         A+5e2JCbOI5X0GR1T0zYqnxK/c0EaeK/ESDXA40MJ+DsdvjLghDO/mbdcG++VTkttCAb
         fqoA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=pTDOOlelqDJSNIeDOQViWM4O0XdQHz82uyUkOx1lnzw=;
        b=MjLgFfo7iEWRBgwgWhur9hEg6JmlNHVXZjsllED5hqKcS8GkTRRSK6vQJDJBokIS0j
         lJRHV8ZaWFS3wdjb8sMYjf2LlcoBUN/ej2gUEH12S5k+JkyKyl9qmqozUXRXsdgU8bwL
         U8TC3g/Q/Oy+pJcInBdlNSnfHGT2KShe7Jou3pgJiZTOcWzgRe5zNYNq4HEZfQDme9tQ
         RTbo437hld85EMhDGba8VGZT4d3QVdOO6NWOh/8y7ywnMXHeygtSlaIXQrwadkl5zxrA
         uPbUNpVrrcgSr1uTiXNUZEe8wqljY1p8VZHPiofCHOUr2C35ZoDf/QM86pb+nIuPthnz
         QANQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533JBYa+H6PiXJjcz+sJ1zxc7kE7IVkF7Bog0Q8fu+euC4q5CezY
	KDlZ+8jwO6wn85e90ynLu48=
X-Google-Smtp-Source: ABdhPJxo8TBJHHc6inrfk2Es2sQ78t78hRa8JUAQ5Hphz6F5TkDC2Lg5/z0pUm31y1W+olVyZVZeww==
X-Received: by 2002:a2e:7c14:: with SMTP id x20mr549084ljc.252.1601932100537;
        Mon, 05 Oct 2020 14:08:20 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a19:84c1:: with SMTP id g184ls891629lfd.3.gmail; Mon, 05 Oct
 2020 14:08:19 -0700 (PDT)
X-Received: by 2002:a19:f102:: with SMTP id p2mr419464lfh.280.1601932099349;
        Mon, 05 Oct 2020 14:08:19 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1601932099; cv=none;
        d=google.com; s=arc-20160816;
        b=ZXekIK5Cxlq8jEa+n3qe+BAM5BBb7tr5Z2zVp4Vu4EMp/8osaWf3faadkh0UiNzVG1
         lKHi5MIkBs2FZROxuoRURzo0j+f5h+jT/b/XTrzhhdYXD6/yu6sb2GpE3kYzM3uV5GR5
         5jezeTB4/QpDg+v52oyfBXKo849nUiOFW7V6MbrPtnYnu3iNemREk9NOQrjxyP9LQR30
         g51NIjv5CnUzhQdJodkPhG9z5xhT4qPEf5qAmYDZWg4GPts0lHHKlJnHXcH+uxDYbQvi
         M3JQKP39UlxobuVJRnZX+SOmlBhsgdZh3IMFydJorlitIDcgkmwmezimnISImBEF2pAR
         wSLQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date;
        bh=K56DZXoJfR+F6LGGnKx2Qpji7Wph3EjIYj+weWqvO40=;
        b=i66PQwrvt/lL31YCF1nEtCNzlYF8nmZlggdxDksTfddvcZ9ExMXIsTCl6DSI5jU1t2
         uSi1GvvdJnllOYdb9EoJFEK4L4vdkhpTxovJzblvSCvJJRVy7v2Mwp7fN1DHjh9noP1E
         HfxMsjxtr4RRz+NIvuukXQRd8d4LCyRWPrMbI8BHgNmb1errqcg4/sJicswG0783sJC/
         b3qDE67qEor6jV8FiOD+4Tq/qa/+57/aZfTIDEffLJL+8Pin3vn+XnNzR9NW1bmt7HYO
         xXvFqM/v0btgvu2YSnDV5IsItSEDKr0NzN3ctM1Xbxc8FuAhy00U8sHKBFvvpDtfayjD
         LQgg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of andrew@lunn.ch designates 185.16.172.187 as permitted sender) smtp.mailfrom=andrew@lunn.ch
Received: from vps0.lunn.ch (vps0.lunn.ch. [185.16.172.187])
        by gmr-mx.google.com with ESMTPS id q11si30865lfo.8.2020.10.05.14.08.18
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 05 Oct 2020 14:08:18 -0700 (PDT)
Received-SPF: pass (google.com: domain of andrew@lunn.ch designates 185.16.172.187 as permitted sender) client-ip=185.16.172.187;
Received: from andrew by vps0.lunn.ch with local (Exim 4.94)
	(envelope-from <andrew@lunn.ch>)
	id 1kPXiK-000H6F-Se; Mon, 05 Oct 2020 23:08:08 +0200
Date: Mon, 5 Oct 2020 23:08:08 +0200
From: Andrew Lunn <andrew@lunn.ch>
To: Arnd Bergmann <arnd@arndb.de>
Cc: Nick Desaulniers <ndesaulniers@google.com>,
	netdev <netdev@vger.kernel.org>, David Miller <davem@davemloft.net>,
	Jakub Kicinski <kuba@kernel.org>,
	Masahiro Yamada <masahiroy@kernel.org>,
	Michal Marek <michal.lkml@markovi.net>,
	Rohit Maheshwari <rohitm@chelsio.com>,
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>
Subject: Re: [PATCH net-next v2 1/2] Makefile.extrawarn: Add symbol for W=1
 warnings for today
Message-ID: <20201005210808.GE56634@lunn.ch>
References: <20201001011232.4050282-1-andrew@lunn.ch>
 <20201001011232.4050282-2-andrew@lunn.ch>
 <CAKwvOdnVC8F1=QT03W5Zh9pJdTxxNfRcqXeob5_b4CXycvG1+g@mail.gmail.com>
 <20201002014411.GG4067422@lunn.ch>
 <CAKwvOdmdfwWsRtJHtJ16B0RMyoxUi1587OKnyunQd5gfwmnGsA@mail.gmail.com>
 <20201005194913.GC56634@lunn.ch>
 <CAK8P3a1qS8kaXNqAtqMKpWGx05DHVHMYwKBD_j-Zs+DHbL5CNw@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAK8P3a1qS8kaXNqAtqMKpWGx05DHVHMYwKBD_j-Zs+DHbL5CNw@mail.gmail.com>
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

> It depends a lot on what portion of the kernel gets enabled for W=1.
> 
> As long as it's only drivers that are actively maintained, and they
> make up a fairly small portion of all code, it should not be a problem
> to find someone to fix useful warnings.

Well, drivers/net/ethernet is around 1.5M LOC. The tree as a whole is
just short of 23M LOC. So i guess that is a small portion of all the
code.

	Andrew

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201005210808.GE56634%40lunn.ch.
