Return-Path: <clang-built-linux+bncBCTYRDEG7MGBBM7NWT4AKGQEBT7NORI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x93c.google.com (mail-ua1-x93c.google.com [IPv6:2607:f8b0:4864:20::93c])
	by mail.lfdr.de (Postfix) with ESMTPS id 41DFE21E707
	for <lists+clang-built-linux@lfdr.de>; Tue, 14 Jul 2020 06:38:12 +0200 (CEST)
Received: by mail-ua1-x93c.google.com with SMTP id h10sf7689053uar.6
        for <lists+clang-built-linux@lfdr.de>; Mon, 13 Jul 2020 21:38:12 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1594701491; cv=pass;
        d=google.com; s=arc-20160816;
        b=v3D+YBQTppBxZYA4V+HwgFFYFD0r3MSb+Y9ImA8eMfLdQZe+v9Z+DUxbRoc8HJh/Y6
         WGL0p1VN29Lg5uDRSLNYN0HfE9w8tJUiE1nXktXCJifm2nyAnajimYh2Zjfy9yQevlgu
         yCfZiSzxhPRtKifKrmecicj+ij7CeZ78KQGpbNwGk+956O4nbsGAg2SVFr8iHCLYa/V8
         cA351+5mu52pptDDTXb8X1BN3fYzHNcLYiypZeb1NXifnhaz/JMaEXFgR6OBpWHXsvtb
         JdK9ytjy5GGa2V0nysm1IzlSSMkWQke55cc96GrLBz1PURIRljffQaztFlafC+338Nqc
         HVgQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=YDU7kMQoym2zU62n12BMPPZrO0lxf3PhFdH7fSQzQE0=;
        b=CF0Cgror2KFm0aaKmKdf2MEwC9VFrZjB81vKmc0BuDCLGeC8/vO1PGlxN/KyhAn4Vz
         JRPAZakTD+OFru2Zq3tPYeoKOBy65soyXWTaovYiIL3emAQl9AKVS5nwZD0C3/LbntWL
         aHc8/lQVy+di5AKuile4MX52YBbhbRMWDdDC3B486nuOynCe32KBhSYZ1CnmaOaGVuNM
         AQm5hoMwE7WACt7WxDvvcwqCvdfzzVofSNo2wvAy0BdbyLMGKZuBpeVhISRSJ0NUtKjc
         1gNnGZjNf8AeSK/a48Ha23fEYCczbkyNdmemzLDIKWy76jbK80S10SfKWj+MsAtrSfYN
         2spQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=e9tDNzCI;
       spf=pass (google.com: domain of andrii.nakryiko@gmail.com designates 2607:f8b0:4864:20::f44 as permitted sender) smtp.mailfrom=andrii.nakryiko@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=YDU7kMQoym2zU62n12BMPPZrO0lxf3PhFdH7fSQzQE0=;
        b=V4VrBic0vgfOw4K+0mTAnXIfuZ/N3nSkitqLLKloHu2lOijW7d/m8dCCiOUC9cGKqc
         9Tp2kFScx0cnCQFsdqIX8bShnbo7nO9Kecinr+idy8VQlxgcssyb6UGFH0dpRhhrNLZo
         JTg2PSq2sti54R+qRoGXlvW9ftrF7YXIdGBTzbxNeaSponI8YZ632octclg1PLohodpT
         k0eH7Pdjr5d6SlT8oXa83+hmVhAQNxJEz19DHN5UNFJ+l1X7zMSC9e1PCVbzRcK2viC5
         X2DoFuTZEMLrFYm2WzdgncOPl9l6c2LFdV1CD2wUG9gYNx+o9kWsLUuE3qVH66OOLelG
         pNyA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=YDU7kMQoym2zU62n12BMPPZrO0lxf3PhFdH7fSQzQE0=;
        b=HNn/IK5W0EQFu9LzV8XsxwenrJy2yhFgXMpy6ss/29jLFy+oHLKhI+W1Ua/lb0qiWf
         /b16jv8pKouu8D5TfeuHw7G2F5SrXEzY60qcumJqot8dr4HMZDGyrXLkTxwDiaVLYbFZ
         x6FwU2wF/u2doaKtyfehcTeY94qqDJtX+210fkskMjKMZ9U8cMRE/KbRtOs/Ap+BgFUF
         IX5xHv6xdVrA6nWMzfPYZWVMj/1hMNMgdiw3ExnySy8tdMxEwzm8LK8OCx7h0eBg4iP7
         A5b0JOmelmFBaaSXwoGecFKW37Xk9+scp0EEQh0YTgCPIvf0jN4LAMv6juLap+BvSnPe
         /2Mg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=YDU7kMQoym2zU62n12BMPPZrO0lxf3PhFdH7fSQzQE0=;
        b=Zv1NHbM3nxMRn+H5gWIP+zFBeKcYDuvC7B/EiMK8Iri9y7VC0T1WdPGlz8iuGQMd8+
         Pq2TFIfbRwl1VKxR43hLA9A1k1pMoNP2BWV77cxu9oUekclMHyoUo6P9UNVx07GnE9QC
         JhbQr3S6nN6Paa9fyuwLKlBGiX3Q+2LRXa3q5c0OT7fF9hQoWALaypp6qr35AtkimL93
         aPlAbmEzbhdgYLPDptLtxRcful7AQWdrYY6obddJpbnSYj4oNLYgnDgnq4STpAd/7BoH
         B3N+vgIIOuDmxSQMvlOfIvrztk1jbSuQpszoDb5vca6K7pteNH/1oYKfjWFgPRQQMaDe
         9+EA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530hz7uI/NEV8arfGbpX0NGbhix0mMYVx3JGTk2lcmxFmi/ppC+7
	3xBYdzblNDwZ2KfisrPXbKs=
X-Google-Smtp-Source: ABdhPJwnhBUlHYVfodZU1ibj66wkr1g/bWh54ngesex438r+wstlAbvGOjhMZSwH/s8Vd57+MF9ZQg==
X-Received: by 2002:a05:6102:127c:: with SMTP id q28mr1952934vsg.231.1594701491167;
        Mon, 13 Jul 2020 21:38:11 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ab0:5515:: with SMTP id t21ls1294600uaa.1.gmail; Mon, 13 Jul
 2020 21:38:10 -0700 (PDT)
X-Received: by 2002:ab0:1167:: with SMTP id g39mr1981080uac.60.1594701490771;
        Mon, 13 Jul 2020 21:38:10 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1594701490; cv=none;
        d=google.com; s=arc-20160816;
        b=lMeftdZUsr39sWIoqPGS1wzFOhhf1df5/SV5tqffEuV2wK+2xXlWdj6CDHqjn+iCuz
         DUfxUXmbRWBsbumLScsyUxR0z3a4RCUMK0GWcJwXf0j/R4AUQNWXsrq1RDUgPW/XElvZ
         Ff7aV5hCmJfaqV8fjcW2BJ7YdqJEp54I7aWMye6lYyUBqNK9agA1kO/D0qnDSOO7tQ8T
         eHY2vA5mUWOqK7/OVkI6nxO9cG8PjQfFjo9T7k+KAerP7WEAq1ArX+sbZI8mHJbtenkR
         3bDZ0deqk7dH0yZJiSZSrsIsBHCT7R74BJre3buOZCap9gyCqoySUZQgothq1bOUho+O
         AD6w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=Y31BNb/eGqFyJBN9GqgydpHsgPuWi+UTnaYm/dyFLoI=;
        b=C0oUGUnCTcB93+vJ2xMk41ieUSbwi+UWybc2tkXhKLwkJO6mutMNt3cI5aQc54GmSs
         YgapLW0DsB9Frq41Pvy4d0cSd7Vk9KvH1d4xNyQ+zCFzziArzK9S4qnvQ28YiyMXxzTr
         /qgQF7YRuDPw9pEmgYWGb7OZEAciRxBU3QHYUPqL2W57FTzuRNr2+AK771fgxE+yWp2K
         8isfuMj4vKwy5fRZq+nNZwFTub200akpMJ4SHuzBEtqdONZK3Pib8TR2ke8kTf1sXbls
         GlLBrfeVvCgA5J3R9vu5abgXNXRXqxxhk5OCO6YMCGsw6dQI+5YCQtnFB51huIBQo3S9
         UcWA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=e9tDNzCI;
       spf=pass (google.com: domain of andrii.nakryiko@gmail.com designates 2607:f8b0:4864:20::f44 as permitted sender) smtp.mailfrom=andrii.nakryiko@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-qv1-xf44.google.com (mail-qv1-xf44.google.com. [2607:f8b0:4864:20::f44])
        by gmr-mx.google.com with ESMTPS id e10si50191vkp.4.2020.07.13.21.38.10
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 13 Jul 2020 21:38:10 -0700 (PDT)
Received-SPF: pass (google.com: domain of andrii.nakryiko@gmail.com designates 2607:f8b0:4864:20::f44 as permitted sender) client-ip=2607:f8b0:4864:20::f44;
Received: by mail-qv1-xf44.google.com with SMTP id el4so6885281qvb.13;
        Mon, 13 Jul 2020 21:38:10 -0700 (PDT)
X-Received: by 2002:a05:6214:bce:: with SMTP id ff14mr2751110qvb.196.1594701489859;
 Mon, 13 Jul 2020 21:38:09 -0700 (PDT)
MIME-Version: 1.0
References: <CAEf4BzZRGOsTiW3uFWd1aY6K5Yi+QBrTeC5FNOo6uVXviXuX4g@mail.gmail.com>
 <20200714012732.195466-1-yepeilin.cs@gmail.com>
In-Reply-To: <20200714012732.195466-1-yepeilin.cs@gmail.com>
From: Andrii Nakryiko <andrii.nakryiko@gmail.com>
Date: Mon, 13 Jul 2020 21:37:59 -0700
Message-ID: <CAEf4Bzas-C7hKX=AutcV1fz-F_q2P8+OCnrA37h-nCytLHPn1g@mail.gmail.com>
Subject: Re: [Linux-kernel-mentees] [PATCH v2] bpf: Fix NULL pointer
 dereference in __btf_resolve_helper_id()
To: Peilin Ye <yepeilin.cs@gmail.com>
Cc: Andrii Nakryiko <andriin@fb.com>, Alexei Starovoitov <ast@kernel.org>, 
	Daniel Borkmann <daniel@iogearbox.net>, Martin KaFai Lau <kafai@fb.com>, Song Liu <songliubraving@fb.com>, 
	Yonghong Song <yhs@fb.com>, John Fastabend <john.fastabend@gmail.com>, KP Singh <kpsingh@chromium.org>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Networking <netdev@vger.kernel.org>, 
	bpf <bpf@vger.kernel.org>, syzkaller-bugs@googlegroups.com, 
	linux-kernel-mentees@lists.linuxfoundation.org, 
	open list <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: andrii.nakryiko@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=e9tDNzCI;       spf=pass
 (google.com: domain of andrii.nakryiko@gmail.com designates
 2607:f8b0:4864:20::f44 as permitted sender) smtp.mailfrom=andrii.nakryiko@gmail.com;
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

On Mon, Jul 13, 2020 at 6:29 PM Peilin Ye <yepeilin.cs@gmail.com> wrote:
>
> Prevent __btf_resolve_helper_id() from dereferencing `btf_vmlinux`
> as NULL. This patch fixes the following syzbot bug:
>
>     https://syzkaller.appspot.com/bug?id=5edd146856fd513747c1992442732e5a0e9ba355
>
> Reported-by: syzbot+ee09bda7017345f1fbe6@syzkaller.appspotmail.com
> Signed-off-by: Peilin Ye <yepeilin.cs@gmail.com>
> ---
> Thank you for reviewing my patch! I am new to Linux kernel development; would
> the log message and errno be appropriate for this case?

I think it's good enough, thanks for the fix.

Acked-by: Andrii Nakryiko <andriin@fb.com>

>
> Change in v2:
>     - Split NULL and IS_ERR cases.
>
>  kernel/bpf/btf.c | 5 +++++
>  1 file changed, 5 insertions(+)
>

[...]

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAEf4Bzas-C7hKX%3DAutcV1fz-F_q2P8%2BOCnrA37h-nCytLHPn1g%40mail.gmail.com.
