Return-Path: <clang-built-linux+bncBDAJTOEJWQDRBYG5QXWAKGQEUMMA7RY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3e.google.com (mail-io1-xd3e.google.com [IPv6:2607:f8b0:4864:20::d3e])
	by mail.lfdr.de (Postfix) with ESMTPS id 297E7B58A4
	for <lists+clang-built-linux@lfdr.de>; Wed, 18 Sep 2019 01:40:18 +0200 (CEST)
Received: by mail-io1-xd3e.google.com with SMTP id r5sf1142836iop.2
        for <lists+clang-built-linux@lfdr.de>; Tue, 17 Sep 2019 16:40:18 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1568763617; cv=pass;
        d=google.com; s=arc-20160816;
        b=dOiiLj25V3VWq+xfuF49e6skVaLvEA63wbnfaWeE8F5VUk6kkURl0J1Lk3gShfjPXL
         QkhGM2Uw1HjkLKtNI7Ms2nmkvet+XSmb5WOC7P6g2ZfFW53I/ud0RxPc0rNQRZJ/6SSc
         7pnlN/qrpd55TJOuAkCKjRnJTA9WGX8bUCouIy1CSwoh5pHLfzrgsYnjcTUldy8CDlQC
         GM6T2zMZwGMW70GRgTU4VUFXybBaMvaEeMW8TzK3bWHRHNrQYgLD7OueCu9Xcn1unSwE
         niZksLgonBB6rwabx4QzYwUmxo4wDyats9iMY7TcUS5kaN3ouPd6IhjHUjGht+9bawKG
         TAMw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=ieGqxrGrHPBSFup+UlgLJCtBZFk7wdb2Z0xedEomuWQ=;
        b=wygMluUpSUreEFwYBLC6gsUTpjw5sZryHhrgz9iWLxKqglEEeryfxUPF0aM7zG/wth
         dDXyq16OVpVPEB59Dnh6nVbJD7SI98+WgDHWI2sHfvx6Jb32VSL7TP8WWWoT0FVJY2+5
         Os0IuhuLnVmPCRBTKXMwojW1bK1F5yAsOUEgv6+BOdn0CsE0j9RPJqfuTCBvuHlzwSTm
         AMRiC96gXC2A5sHPJZg1lLIv1NK5eWnlJWlsGCTL8NelT1irsMuNZZ6Iuy3nI4c4HSVt
         ZDuTkfbX3yUmrS+C97Br7niBjRw9GU6sHn0d9i0wQdbU2BJfQn8Ui1NiHXYMCUAjttxv
         QRtw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@pensando.io header.s=google header.b=mtru1eNw;
       spf=pass (google.com: domain of snelson@pensando.io designates 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=snelson@pensando.io
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=ieGqxrGrHPBSFup+UlgLJCtBZFk7wdb2Z0xedEomuWQ=;
        b=WR+C4WJ6g3uZCF49E7EIzhgPz67gqHFgNLvOri45ywT40HT15XDo7d9erBs/Y57psn
         OVw7Dwo03ySjJMsDb/emNBthfg89ascexFLD2Oo16m9JRsGx7UHrQ0f03e9huG/Mv5Uz
         0dqmkde7pKGq2pDJ392uWmL4UND3+5eWKWPfPqx9wnopV7Ig7C4A22xpwzIx8UOEmu5B
         IjaCV68Pr95LkrNPk+UghxzgviJ8Y+Lc2Fie409qxmk7LDYW2ukOuaVeU2HMiEPbhhCS
         a6n5tCaTZdw9Gd0rPuNQF+bmr8GEI+br+ervr0WqCBHpy841jInjiBmC0MM5jPqJgICX
         O8xA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=ieGqxrGrHPBSFup+UlgLJCtBZFk7wdb2Z0xedEomuWQ=;
        b=d3p5KQup/9HRg9xZrb/9tJ8OLbFiVrlSuWkADdCO7rEc109jq/8+jAjGer/Rmh2eV7
         dZiu0J8qV2KRWlSxMhSYZxps/R2ZJv3o6zpuQSfgZ9n8oJgTo1cRY7gq5+1WSCah55W2
         C9W+IrZBGlCyaKzCu5zyF2p4XFeS28miyoiY/XMBWlbRyw75TqYoji2v3/NPnOIf3Tog
         RG6h54f2nbAeaxjt3OrH/PHvwSPsdzDdZPamtfoRzhcw1olEOpSVnCTGm0Wao5yGeV4b
         lGLr7hZBfLakiGQ3H8vFZt7wcNzzFYI1fr2t+TIbqF7w7+jsl2Y7XEsz9VYkGlwKPK79
         4Gqg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVAzOSj6q1FPpobH7T0GyVoW7EtSNNEMGP0Bv+/+2FfiLyrcV6O
	FAW06oiNcW+9htw8cTcLhuU=
X-Google-Smtp-Source: APXvYqwvvM175o1cFdhbEw4TDQeql8jItEEho4EZ15P8o291fWpqZIaGLW8MXEOauDFtmS+KNTyt3A==
X-Received: by 2002:a5d:8890:: with SMTP id d16mr1785259ioo.126.1568763617133;
        Tue, 17 Sep 2019 16:40:17 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a02:918e:: with SMTP id p14ls658071jag.11.gmail; Tue, 17 Sep
 2019 16:40:16 -0700 (PDT)
X-Received: by 2002:a05:6638:88:: with SMTP id v8mr1446132jao.97.1568763616633;
        Tue, 17 Sep 2019 16:40:16 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1568763616; cv=none;
        d=google.com; s=arc-20160816;
        b=VHKHBpnedDm24itRjxogXUK0ZMCUo+dP/As/6RuMqZjbgX8t/K67WhhkKuz1qFxkp1
         ANabqmsFwSbSisfHnH8bXhkD9AB5YLJwcuekjZ5nRCIwpgyGcB/d/Te8s8EttVyI47k6
         WLDcL9MxsFBbh/mxlK3mHEPDlBNliMXHe14Cy/oKppzsWJfGjJ3RVwGi/UBKxktgaMQX
         LncjyIhPe8b1ng7VAD4Ek+wynL/waxiOCDcTJNYxRJqp5vbvjCkl8RH61esTsBDon0/L
         yF61lxNx88z6+JWW4TROWZtoWprorQ5J6ywWJ57kfe6BlYvb1r5tXX0tKsxp41VuFznq
         jrLg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-language:content-transfer-encoding:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=+Hy1zYT45CoUKVQY5bAeFzJ87DLdn4Gay+OsZiEpRs4=;
        b=D3qQuQINGzirT0NbYUcJHDoJ6btJOfk6jiz/ZTJaiNpYwXWdpbO5IUhBgCLipwjn5C
         N7ZTqYvP60yDrxKjF5usIOwermCiG0wZ4Y1weuWz9dyQ+jmv1ktCNi2Z5LoaTtdC0FYL
         9YshoTPrFqyviLSdzEW9BryODzitOBl8SeCpCWUvO4ZsWQwlpi6eaNGYD4++rb/Xjmv8
         9Jbgv2CBUoPPZIXTDG1mWbogyZtEKl7oxMYm7uVGFvlod4bfb5/YxIiEGw5KnHOz/0Rv
         lPD923tUTMkCdlOd1HRJRYu0cLxN8w8oOiPTjF1cJVmJ2wXpPJquO6KlcLTdveSzmcNZ
         z0yg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@pensando.io header.s=google header.b=mtru1eNw;
       spf=pass (google.com: domain of snelson@pensando.io designates 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=snelson@pensando.io
Received: from mail-pf1-x443.google.com (mail-pf1-x443.google.com. [2607:f8b0:4864:20::443])
        by gmr-mx.google.com with ESMTPS id a26si464555ioq.2.2019.09.17.16.40.16
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 17 Sep 2019 16:40:16 -0700 (PDT)
Received-SPF: pass (google.com: domain of snelson@pensando.io designates 2607:f8b0:4864:20::443 as permitted sender) client-ip=2607:f8b0:4864:20::443;
Received: by mail-pf1-x443.google.com with SMTP id y22so3105188pfr.3
        for <clang-built-linux@googlegroups.com>; Tue, 17 Sep 2019 16:40:16 -0700 (PDT)
X-Received: by 2002:aa7:8189:: with SMTP id g9mr1024631pfi.78.1568763616104;
        Tue, 17 Sep 2019 16:40:16 -0700 (PDT)
Received: from Shannons-MacBook-Pro.local ([12.1.37.26])
        by smtp.gmail.com with ESMTPSA id s21sm243905pjr.24.2019.09.17.16.40.14
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 17 Sep 2019 16:40:15 -0700 (PDT)
Subject: Re: [PATCH] ionic: Remove unnecessary ternary operator in
 ionic_debugfs_add_ident
To: Nathan Chancellor <natechancellor@gmail.com>,
 Pensando Drivers <drivers@pensando.io>, "David S. Miller"
 <davem@davemloft.net>
Cc: netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 clang-built-linux@googlegroups.com,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
References: <20190917232616.125261-1-natechancellor@gmail.com>
From: Shannon Nelson <snelson@pensando.io>
Message-ID: <53a991df-fe1e-29b2-4af5-c1702e5dc626@pensando.io>
Date: Tue, 17 Sep 2019 16:40:13 -0700
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.14; rv:60.0)
 Gecko/20100101 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20190917232616.125261-1-natechancellor@gmail.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: en-US
X-Original-Sender: snelson@pensando.io
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@pensando.io header.s=google header.b=mtru1eNw;       spf=pass
 (google.com: domain of snelson@pensando.io designates 2607:f8b0:4864:20::443
 as permitted sender) smtp.mailfrom=snelson@pensando.io
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


On 9/17/19 4:26 PM, Nathan Chancellor wrote:
> clang warns:
>
> ../drivers/net/ethernet/pensando/ionic/ionic_debugfs.c:60:37: warning:
> expression result unused [-Wunused-value]
>                              ionic, &identity_fops) ? 0 : -EOPNOTSUPP;
>                                                           ^~~~~~~~~~~
> 1 warning generated.
>
> The return value of debugfs_create_file does not need to be checked [1]
> and the function returns void so get rid of the ternary operator, it is
> unnecessary.
>
> [1]: https://lore.kernel.org/linux-mm/20150815160730.GB25186@kroah.com/
>
> Fixes: fbfb8031533c ("ionic: Add hardware init and device commands")
> Link: https://github.com/ClangBuiltLinux/linux/issues/658
> Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>

Acked-by: Shannon Nelson <snelson@pensando.io>

> ---
>   drivers/net/ethernet/pensando/ionic/ionic_debugfs.c | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/net/ethernet/pensando/ionic/ionic_debugfs.c b/drivers/net/ethernet/pensando/ionic/ionic_debugfs.c
> index 7afc4a365b75..bc03cecf80cc 100644
> --- a/drivers/net/ethernet/pensando/ionic/ionic_debugfs.c
> +++ b/drivers/net/ethernet/pensando/ionic/ionic_debugfs.c
> @@ -57,7 +57,7 @@ DEFINE_SHOW_ATTRIBUTE(identity);
>   void ionic_debugfs_add_ident(struct ionic *ionic)
>   {
>   	debugfs_create_file("identity", 0400, ionic->dentry,
> -			    ionic, &identity_fops) ? 0 : -EOPNOTSUPP;
> +			    ionic, &identity_fops);
>   }
>   
>   void ionic_debugfs_add_sizes(struct ionic *ionic)

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/53a991df-fe1e-29b2-4af5-c1702e5dc626%40pensando.io.
