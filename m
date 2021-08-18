Return-Path: <clang-built-linux+bncBDNYNPOAQ4GBBYU46GEAMGQEDO7M6DQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103d.google.com (mail-pj1-x103d.google.com [IPv6:2607:f8b0:4864:20::103d])
	by mail.lfdr.de (Postfix) with ESMTPS id 952993EF674
	for <lists+clang-built-linux@lfdr.de>; Wed, 18 Aug 2021 02:03:48 +0200 (CEST)
Received: by mail-pj1-x103d.google.com with SMTP id h21-20020a17090adb95b029017797967ffbsf615601pjv.5
        for <lists+clang-built-linux@lfdr.de>; Tue, 17 Aug 2021 17:03:48 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629245027; cv=pass;
        d=google.com; s=arc-20160816;
        b=LgiZhBGB4e07Xd5zqX6pvRTV1ihw+ZfTzSN/i1rj9eutNs6FARyDeSF7GQb+sHH1re
         3oAgJ6xolCat8DsbTiv6/h3y5oe+39Fg5T26t/D33nYxnYXK5M581nYIE+RR0PKV8xR7
         RW0x67kKE7gD79J77oDn55eK14SI48RO2MzXQhawZIbbf+eShD58QYM9SyWTHj8/qd44
         EXfxfUek+p/N0k8Gs9b/rI0yMqaywDZfydnxL7u33ssqOETPCZV61yN/stIi0n3FlCpk
         XU8BM2hk955NyDVsSJX5CIk+Hp3LkH7EszFtBoxaHcF7k9Wv+xJ+VSBuUM6JeiBw3vxF
         B5yg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=Ba79c4U6jTfJ16tfTBVcwjS31sZNR+ov1zeu51vTfRE=;
        b=mDZ0h8Do+hTNoy2tRRM9I6TGvz1Lo6Ec7qRu34Y80bVo1TYShQW11zk3auZTgGsnMp
         4g60FKFbex3j1ygBo5pZmwgKC0BtsqiRHPqV0Ftv1p7W8CA9tKpFs8PrD/BVULQZmm1F
         VS1XR3FAMiDfv+fM3avdRTy9xJogMiX0Trxk8aFCZaprjrRBQ5qydtE28yZS4nkQlvC6
         n/iSRwQhRO24/k4WeKHZD7Lgsr3uN94l6Q4BmR0Mc8D8YgB6RZ2mpR3sWHP5+20VuhFc
         Y5DnVOIBZEZh4f+vhPHTcYjIDx00nbKIgxnRWBNCRRgE/heq/5XRizz4IvC53juZC+sy
         8FLA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@embeddedor.com header.s=default header.b=GwgyHLFK;
       spf=pass (google.com: domain of gustavo@embeddedor.com designates 192.185.46.142 as permitted sender) smtp.mailfrom=gustavo@embeddedor.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Ba79c4U6jTfJ16tfTBVcwjS31sZNR+ov1zeu51vTfRE=;
        b=iu1BVh7l4mauRy6RaIK2XnBdhZZmCkUV7vpOLrQ9SBtveoAucHYnrlIOfUUHt3WrF7
         kXVsxtrJwV5hrsX46qZTbPsPumKq7szu2J70TvYughxI7YOGb7s8+HLMdQYm+ykIlRuf
         Wua7dXaY9soGMo/gZKWMwPx91jLAVBCbaaNe5v6RdrIkM+C6R0LgTk2+ofkg2MrMGeYg
         /s1io12JDQY1dTaS38CDxZcBvI/3aMT2L9JPOeh29Bo37eNXClFGHrQllSlrqlJ8gWQz
         d7EvUHOBAfZhY83DCraoIpLa00ZFl2MRKJ4YYH/XGSwOn4iYOdq6Nh7Pmra1LvDiSnO2
         Avfg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=Ba79c4U6jTfJ16tfTBVcwjS31sZNR+ov1zeu51vTfRE=;
        b=OPhflcv2AmluioXlvhuutykBQrWrwAifxslhReGFJ4Eu7BczJHdO447HSgcjFAoNbk
         anjNjlVjMswAo58em2ol7g+KWjVq6zBM8ZgpC4FDVTfrb9/7VyRbx9hVrzLwIxgyWR4q
         HZ56fkxdcCkVfzanBmhUFU8NK9bzEHq18/hWCjG6hTKQV2ftEBI1Hlw0dmQ2PsTTYR4v
         0yROVrf4v5W3Xt7JB3A9J4IWcz23o0kijWyMl4N2rkeyegoYJOXwfh3RtP7RIZ6iqRJM
         ihXMI88S66cR4Mt8pAJ2qlOVJb9u5y2jvYcyzq1kQscdrTMGL9Mel9MgIV7bB1RbhxEy
         wxvA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530FY+n2rxhn8xPEJNcTTVrQELV7BNLUWqkwvBrhGyOWG4PJRbND
	AmxSWgXaNf7TnkXcW9bBEIM=
X-Google-Smtp-Source: ABdhPJzCgEaNZZ1GIu+VmJr4lh87e+lgs54cnuqP96ejTP7IZcrqTBf8o3uQ8WKuQjXgGx6NBGOg7Q==
X-Received: by 2002:a62:5c6:0:b029:341:e0b1:a72c with SMTP id 189-20020a6205c60000b0290341e0b1a72cmr6229255pff.71.1629245026958;
        Tue, 17 Aug 2021 17:03:46 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:848e:: with SMTP id c14ls202380plo.1.gmail; Tue, 17
 Aug 2021 17:03:46 -0700 (PDT)
X-Received: by 2002:a17:902:ba90:b029:12c:acd:88f3 with SMTP id k16-20020a170902ba90b029012c0acd88f3mr4747245pls.3.1629245026276;
        Tue, 17 Aug 2021 17:03:46 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629245026; cv=none;
        d=google.com; s=arc-20160816;
        b=eY4TOCjP6lPBT7uU7L0kjg8RB89ahCNtppBPf6/3gjGK1yGKYEV40sagWqNmKmM9OG
         C+16RdqWJ9zBTjYu5hY3DfQpIyyTGLwwTkgSIljQcymeD8h99nvo3lyIqajNV+jjGhmd
         Sx4quZlk/PfuaEXhJOvNtMxYQzQdvB1mCy9j3fhqRMlZ4/aUg0ezaJ23FNjL25L9cklX
         kyPguGK3AvGUyuF9RL4JVAzWXySiVva5iqGx+T3v7zRkmj9tKJQ4nWFiruhkvRH+79wT
         D1gWN+gCf1fAKir6KkTR8CCsUIEJ59K2urZMsvOcYBSgLzHNn95KBEEFgrqA6GackxG2
         mxrw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=iQ7/KUtVSBl2ZF7aCwEPA/oEGhWJX+G5Tor9oPp//b0=;
        b=EU6o6Tm5CBjPZD3L/Cdmo72IiBI6/+VHRoXMo9EASokVQ5Ef3hGo6jNXHHi3RyMuOc
         zxHiM5+I6iCW4qde1sz1yqpYd3gmn8JoRiKTvLJrIIpX4OtR+7la5pAF2FfAjlHcxaS6
         bYY+ORvEJ6mOd2nBGAL812Bzdx9j+6iPFLDDo9EuKDje/1Z5MBxUfj5H/H8tqVjgl2yB
         aaQxMuNkh+7lbVFI4fJBT+FqOkiFtR+hqE7P35MstY77t+IVeVKDdM7yzmcyTiKwNc+6
         w9o37RASrz9bBzz3x8v4RVsZlNgplcpucQZ6iYeGpQjyVeFJ9fougLdItQWaJBMFwGju
         nlXQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@embeddedor.com header.s=default header.b=GwgyHLFK;
       spf=pass (google.com: domain of gustavo@embeddedor.com designates 192.185.46.142 as permitted sender) smtp.mailfrom=gustavo@embeddedor.com
Received: from gateway22.websitewelcome.com (gateway22.websitewelcome.com. [192.185.46.142])
        by gmr-mx.google.com with ESMTPS id mn23si192954pjb.2.2021.08.17.17.03.46
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 17 Aug 2021 17:03:46 -0700 (PDT)
Received-SPF: pass (google.com: domain of gustavo@embeddedor.com designates 192.185.46.142 as permitted sender) client-ip=192.185.46.142;
Received: from cm11.websitewelcome.com (cm11.websitewelcome.com [100.42.49.5])
	by gateway22.websitewelcome.com (Postfix) with ESMTP id C13A46D5E
	for <clang-built-linux@googlegroups.com>; Tue, 17 Aug 2021 19:03:45 -0500 (CDT)
Received: from gator4166.hostgator.com ([108.167.133.22])
	by cmsmtp with SMTP
	id G93ZmVuDxK61iG93ZmUHlF; Tue, 17 Aug 2021 19:03:45 -0500
X-Authority-Reason: nr=8
Received: from 187-162-31-110.static.axtel.net ([187.162.31.110]:44728 helo=[192.168.15.8])
	by gator4166.hostgator.com with esmtpsa  (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
	(Exim 4.94.2)
	(envelope-from <gustavo@embeddedor.com>)
	id 1mG93Z-002CVZ-7Y; Tue, 17 Aug 2021 19:03:45 -0500
Subject: Re: [PATCH] scsi: st: Add missing break in switch statement in
 st_ioctl()
To: Nathan Chancellor <nathan@kernel.org>,
 =?UTF-8?Q?Kai_M=c3=a4kisara?= <Kai.Makisara@kolumbus.fi>,
 "James E.J. Bottomley" <jejb@linux.ibm.com>,
 "Martin K. Petersen" <martin.petersen@oracle.com>,
 "Gustavo A. R. Silva" <gustavoars@kernel.org>
Cc: Nick Desaulniers <ndesaulniers@google.com>, linux-scsi@vger.kernel.org,
 linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com
References: <20210817235531.172995-1-nathan@kernel.org>
From: "Gustavo A. R. Silva" <gustavo@embeddedor.com>
Message-ID: <5c2dd751-ba1d-efc1-54b8-2aa9968990c1@embeddedor.com>
Date: Tue, 17 Aug 2021 19:06:49 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <20210817235531.172995-1-nathan@kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - gator4166.hostgator.com
X-AntiAbuse: Original Domain - googlegroups.com
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - embeddedor.com
X-BWhitelist: no
X-Source-IP: 187.162.31.110
X-Source-L: No
X-Exim-ID: 1mG93Z-002CVZ-7Y
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-Source-Sender: 187-162-31-110.static.axtel.net ([192.168.15.8]) [187.162.31.110]:44728
X-Source-Auth: gustavo@embeddedor.com
X-Email-Count: 9
X-Source-Cap: Z3V6aWRpbmU7Z3V6aWRpbmU7Z2F0b3I0MTY2Lmhvc3RnYXRvci5jb20=
X-Local-Domain: yes
X-Original-Sender: gustavo@embeddedor.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@embeddedor.com header.s=default header.b=GwgyHLFK;       spf=pass
 (google.com: domain of gustavo@embeddedor.com designates 192.185.46.142 as
 permitted sender) smtp.mailfrom=gustavo@embeddedor.com
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



On 8/17/21 18:55, Nathan Chancellor wrote:
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

I don't think this tag is needed for these patches.

> Signed-off-by: Nathan Chancellor <nathan@kernel.org>

Reviewed-by: Gustavo A. R. Silva <gustavoars@kernel.org>

I also got the warnings in staging and ntfs3, I have the fixes for those in my
local tree and I will commit them to my tree, soon.

Thanks
--
Gustavo

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

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/5c2dd751-ba1d-efc1-54b8-2aa9968990c1%40embeddedor.com.
