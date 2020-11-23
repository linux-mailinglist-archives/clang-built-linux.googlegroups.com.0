Return-Path: <clang-built-linux+bncBD2NT6VEXYMRBDG6576QKGQESDHTRSY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43c.google.com (mail-pf1-x43c.google.com [IPv6:2607:f8b0:4864:20::43c])
	by mail.lfdr.de (Postfix) with ESMTPS id 1028B2C11B9
	for <lists+clang-built-linux@lfdr.de>; Mon, 23 Nov 2020 18:19:10 +0100 (CET)
Received: by mail-pf1-x43c.google.com with SMTP id q22sf2880706pfj.20
        for <lists+clang-built-linux@lfdr.de>; Mon, 23 Nov 2020 09:19:09 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1606151948; cv=pass;
        d=google.com; s=arc-20160816;
        b=CSETwOo6C/zd8FrhTVlxRtBDG3Vuq8mBp3gl/fXiYVCmiqMiN7MDGnB/KdjgJeA/Uf
         ZzFu6rJXU7QdJM6/9m8idxKdK/tlDWN3cKO8lBxhzLZVAFwlawQ7rZOXuiCo4oquzF7I
         bfadzczC6HlbkpIVzEabQgXqBRgeojtbwsM2OXSA3IFxW9Xo9SF/EpVS7gMgYYWjLW1R
         qORflyZJ7BqrEL/4e3iuy5JZBQnttG+xbBLC5RIqigtuwix9t3KqqPzqUpLG/qvD9i6l
         2IPqihse2i9llD3lonHdC+s2i/1SDvLDsSbObrJp1kAjZCeuDxiepvW2vIk+7MMGWPne
         Fm7w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:subject:cc:to:from:date:sender:dkim-signature;
        bh=Flg3ibUGiMO1HVJFjLyMP+HlabavtY4v9/z/YdwjtQk=;
        b=V82jUZkeOx48p6Kjs3WVaUVHUhOfr5gT9ey20qqN+EkHYbpaN5FHukOUnI3pkOIWYr
         FCBb+qA1pOax1kV9ORWl5jxC3Nh+s3hNxfhndPD1pz43ioECdg/gBn7m9qvAx+Qe/H+t
         6MybizkGK9Qis6FYGDGQyVRKKWZ8x/1NKYpgUdNPfrHVSNo992MZtWpRQ5+EcFbwmIPN
         hGkglp6TmMbbhiR0KMtqpY4R7UQkJN+ATa/YI3+Srye22CW4Wwj36d+P5lVYb5VffyRn
         W/GvRpN4L+qWQTfFZNCexFXMT6VYqxAYP3q6sJwRO5tTfGdgt59AXlARFONAYaXVJewC
         RnBQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=bVicIzV0;
       spf=pass (google.com: domain of kuba@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=kuba@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Flg3ibUGiMO1HVJFjLyMP+HlabavtY4v9/z/YdwjtQk=;
        b=rWglaIMo7Dti0dCAP6grjj8a+VfvyQmdCJhlOtaOH8BxlLEC1DhIYCk50J8yAaWPej
         QSIQn1UwrWRfjcnPdAduHKgp19pqQvWVhgQTDZPBB8C9GSP3gJDDBYJaxUEyI2kEL2eU
         xV2r674TDv4k9jcqPQTKKBjLFU/mHEvKLqUn9SmIk1/4aLiK/2NsibEZYzGe7Uo4rxXI
         S1WMkoVBS1NYvuDjS4fAAwdDjkrKqHzIfH2NAA68ewaqatDcp6T/c0a5kAZHdK758CsC
         RPghbyOja41M8R+Hu5IkUIr7PoLlg9RXSSp71FNCgwwm+3HQ6CbQSwe/BTIU8PzqDG2J
         bG7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Flg3ibUGiMO1HVJFjLyMP+HlabavtY4v9/z/YdwjtQk=;
        b=cW4NCWAwLH+YVyxgZoILeGxJxuNleZmYDz762y9fcCmh7yn0OJ3omVOUa5yE4q2bt+
         eJjty8xCBGm1kannGx3A7i2k0Zsq8hRUp6MZAPghxrOb2xvy4nMer/DexU+gE6DfZMA2
         l0crPOYE4yGxOJnWS4upQnh3o7fK5nxE3UMLh5vQp07tAO6DU3P2S5/b4M93ojxc8EmR
         u+VWIqiFA5XNSKZg0RWVzzmp+xoK2MYQrstOgw/XBLaAAHyXIUIPAzBubnMrFG2eeFVt
         NCZYbdFB1vYW2Rz2Vjuwzm0qo3Y3hOuHeHRqtpyYk/GliwnL7xP3VtaLDP4p8i/L4AP/
         TCkA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM53113EQYph8Y203pcxDu3cI9vdofERE+1Qe/DhTYxnz3KBLZSYNl
	hX+lMWDVF6megWHYdy8GOps=
X-Google-Smtp-Source: ABdhPJybAbH4aUTkZin4QitjUAGwnEWahXDqYkyfajYQLQ8mEpkrdorr5jo34DV+oKHuPCG3HAxriQ==
X-Received: by 2002:a65:679a:: with SMTP id e26mr388230pgr.394.1606151948822;
        Mon, 23 Nov 2020 09:19:08 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:8495:: with SMTP id k143ls5275400pfd.11.gmail; Mon, 23
 Nov 2020 09:19:08 -0800 (PST)
X-Received: by 2002:a63:c157:: with SMTP id p23mr384279pgi.349.1606151948172;
        Mon, 23 Nov 2020 09:19:08 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1606151948; cv=none;
        d=google.com; s=arc-20160816;
        b=fRtyYvQPeERqiC+bTJYiMpTGZwb6H9eAMhTDVtFhSEt0GtZJkud58kiNSl5TxzC1xB
         s8EyloMXFQuuM/3u71NPM6WZF+imuKiwf21xHZILLNmkF0KmyDA3tesPNTlRLEN1STUS
         6BmM9QTMSw+k48C0hxYHaqv7YL5smMzrkal5NaHkzGJ4Leu3JvIgLh2LpnNxIflcchcA
         9SKv6Tg1KHOLNrWRnel1GgvnbU5aZ15jqsdfXf5cHiAZhXOv3UD4evqvvwVnjIFHYBz+
         msM7cYNGHBrs4DZ7cvChK4kidH7lL2ikUD4Oq0WDoiI6GCyya2Z36VULjkKCOAx0iLwc
         MlxQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=cAr5GqPWB0+2/YrxUBooBd/bi9tVV3F00NzbrpaV7QE=;
        b=c0Geg7224hCriLhmQHZDcfWA70YtiVLKHR46buhAgrB3ZBhnahxL64VXi7KWhOJaOW
         HSZfjr8p7105Ri3I9fBDIXoLwszcJLv4Jp0fkm/Ifon1AVTLgYaEH1yGCweTWUEsUKYQ
         v4+FlVPsQINenMXXNd6BYcEDCo25uIb5iQYIqZprAf4KrpdHXQreYgSCiqMWWaEPNNC3
         aUiaYjg4UhYEMN4JaFq9TWYimW3vpCk4zKGCXsWrK6bmsJVpOSn2FVmlRHQcFh3EJq3B
         8Q3SLUdMUEmfVbLB0mp+W10tWtQw4TxFBGXsjTNgD6etaUYRkq/je5FY/PJ0Smyh4uq8
         kbRA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=bVicIzV0;
       spf=pass (google.com: domain of kuba@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=kuba@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id d12si835781pgq.2.2020.11.23.09.19.08
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 23 Nov 2020 09:19:08 -0800 (PST)
Received-SPF: pass (google.com: domain of kuba@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com (unknown [163.114.132.4])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id F3BA220728;
	Mon, 23 Nov 2020 17:19:06 +0000 (UTC)
Date: Mon, 23 Nov 2020 09:19:06 -0800
From: Jakub Kicinski <kuba@kernel.org>
To: Rong Chen <rong.a.chen@intel.com>
Cc: kernel test robot <lkp@intel.com>, Andrea Mayer
 <andrea.mayer@uniroma2.it>, "David S. Miller" <davem@davemloft.net>, David
 Ahern <dsahern@kernel.org>, Alexey Kuznetsov <kuznet@ms2.inr.ac.ru>,
 Hideaki YOSHIFUJI <yoshfuji@linux-ipv6.org>, Shuah Khan
 <skhan@linuxfoundation.org>, Shrijeet Mukherjee <shrijeet@gmail.com>,
 Alexei Starovoitov <ast@kernel.org>, Daniel Borkmann
 <daniel@iogearbox.net>, kbuild-all@lists.01.org,
 clang-built-linux@googlegroups.com, netdev@vger.kernel.org
Subject: Re: [kbuild-all] Re: [net-next,v2,4/5] seg6: add support for the
 SRv6 End.DT4 behavior
Message-ID: <20201123091906.5856d985@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
In-Reply-To: <9242894f-b831-067a-48d8-2f235963dedb@intel.com>
References: <20201107153139.3552-5-andrea.mayer@uniroma2.it>
	<202011131747.puABQV5A-lkp@intel.com>
	<20201113085730.5f3c850a@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
	<9242894f-b831-067a-48d8-2f235963dedb@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: kuba@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=bVicIzV0;       spf=pass
 (google.com: domain of kuba@kernel.org designates 198.145.29.99 as permitted
 sender) smtp.mailfrom=kuba@kernel.org;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=kernel.org
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

On Mon, 23 Nov 2020 09:13:49 +0800 Rong Chen wrote:
> Sorry for the inconvenience, we have optimized the build bot to avoid 
> this situation.

Great to hear, thank you!

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201123091906.5856d985%40kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com.
