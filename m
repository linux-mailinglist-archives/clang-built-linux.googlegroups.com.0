Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBGXHUPZAKGQEQTAM7DQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x13e.google.com (mail-il1-x13e.google.com [IPv6:2607:f8b0:4864:20::13e])
	by mail.lfdr.de (Postfix) with ESMTPS id DEB8416025F
	for <lists+clang-built-linux@lfdr.de>; Sun, 16 Feb 2020 08:47:39 +0100 (CET)
Received: by mail-il1-x13e.google.com with SMTP id p7sf11570261ilq.16
        for <lists+clang-built-linux@lfdr.de>; Sat, 15 Feb 2020 23:47:39 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1581839258; cv=pass;
        d=google.com; s=arc-20160816;
        b=ldMczkc79H02TbG9hIZteRR9asCI8UZiq0N4KCz1BGbSA1B0XzeuoIkPlK3EQwGPre
         lZygPDGM5gcnozn8hll/+mu4zEKUiIjNyLRj6B/QkNXbFevsLz7Np7ASFYvf7gZuGfFI
         2LmTfhHLh+t9I4scbSUsfj+8IP7d9PesK+YYyznTxdHo81PJtwC2W+0yFcU/f2fhF5h6
         8sDIap9ZMJMdcTD9+jum/M/hLJD6rLLK4U4h4wPqK8ERYKf93PsyV4eqZGl5oEvZy93o
         PwWow+rCUqsKcOsXicYJw3MBqXr5zEwNgtNHIlrmChNV+Nym5W4XrHL4Yq42Vi5VVRCp
         JC+g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-transfer-encoding:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:sender:dkim-signature
         :dkim-signature;
        bh=LTR90/s0XOPBuQGdlyGsFPsj110xk5R1j93bNkJBVGw=;
        b=jqorcB1oN4h9zmvXGLn6bSw5DMNkOpNZ2gE2dmiCIlPpgEDw6Mna4qUWIEKeY93TlC
         ZW+yYUkuCSXL6ED0dsja27hJhCy3epXj0oseLouND7JvaSbHqpHLLYUKidy0VQN12VJr
         XkDwffa4lg5L5C8TxbBaplUO/J/lqXkqAF4vy+p9aK5QtP/ND3bRcpuxPfH+fUdksN3t
         3Y/CcinbA6DqKwwQkLp91p82RhSth5kpWXBoq79kpuYuTzJ5m2hKNNkAFzHyNKLFsyAP
         h0KupPddYkj2paTOjJNmknbioIm9oxJCb/Yphw9vHLKPSPt+rPnng88V3adL+uqpjILV
         4kiA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=nSbdy3sa;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::342 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to
         :user-agent:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=LTR90/s0XOPBuQGdlyGsFPsj110xk5R1j93bNkJBVGw=;
        b=mAenhVD8Jyi+tnIeSS776tQd2y8CwvUhhtqXQDbLWBs64qFu3XHbndczsl3gdqrKVo
         bdw8sJQ59chNkr1lsnPXa9ZknvT/BRuyxm7mvZaA6DkjUo4foetRrgEG9vmrs3GRym8p
         lTGOt0CP7oYIeBd/SR/p6fd97iMzz6MHCh7oet8EfVKYQ5vBJJyeLH9q6cNNv7n4ETys
         R0IWWEDMUHPGVwcMVxECZi1p6k9dZllG0kvbioe1HT2OkDRJxfc3YRjcHr8mZGNtXl3i
         heYiJo/0CsqkWfg3j/ACBdtF+mlLAYnxVUW3veoNHpo+SiqJAb+vgTL8WO37mbC5MZFg
         VKZg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to
         :user-agent:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=LTR90/s0XOPBuQGdlyGsFPsj110xk5R1j93bNkJBVGw=;
        b=i3BB296Y2vwN7ILFNi/xhBrUwC+5CzkFccUYakEqQ6XXsaPOLCmLU4IyAK1bA2uflg
         3JiXVoQgSBmQd5Rj8Ebv4vJfVsK43XztlK6JlXjsAYwoiXQ2kC8hhsQ95nsNtSfhXkxb
         WRbZZgAkgVoTzXUoUlsWTs5E3pRTdg221IrDfW7TkKs1hM1iCADWHA5sECI5PoE0cG44
         0zbeycoyet6EA2MDE6FTOfcLWbDBMDdZuUGkGJYSvs6bxIT/B04ScW1ECFId2IrRQIH5
         EeDYu7gUQxIM4kJqB06HSl3XO6AVQ/Y0mGDz7YdovY211uu90lXDoY3XXcHO11cr4h0n
         MAZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition
         :content-transfer-encoding:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=LTR90/s0XOPBuQGdlyGsFPsj110xk5R1j93bNkJBVGw=;
        b=HXMzH/PualWd7hinwIRVW9hRqv/9aD3vq5mQ+6JAdK+1+XLJgvX6mMpLOVUiaZaY7h
         VizQYmQJvvRV/sUgdjUw+1SPC9qaALgVj3AJQu1Pr8SJtkxRCpT0zHliooCQWVKnEWVH
         BEpiBrnyAfAxjaW5TgKN55/UHNPU2hfCLfAGMvs4Um0xFf7ACiViV65oriphS/Q0g5n5
         Fbn56EuLpLUimgIBRctiAj9jjR0YH7Rj1YN7BEf/wijiro1KX7PThA1Z7Fe2GZgmBvk8
         zG64dJzUJyJSlkXrI/kSs9Ro+dLnjiYbOGhdya7miCtG3OxASioIKwQfll/FdO/t7DHI
         IJBg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXFL4W1RMQBpcE29Yph4woy/Vg3e4kHxrFO3vdjWdLNQBzM2KJm
	/IM1e8v1XtMCTu0tgGuIlgQ=
X-Google-Smtp-Source: APXvYqwlLxNcyYcaai/uKcTgZ5QUEzfetYHrd6z6NvqcRMpJ3pZlbr6d6iG0Kg2pA4V52+8W7+YIfQ==
X-Received: by 2002:a5e:9246:: with SMTP id z6mr8594133iop.232.1581839258638;
        Sat, 15 Feb 2020 23:47:38 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a02:7010:: with SMTP id f16ls689765jac.1.gmail; Sat, 15 Feb
 2020 23:47:38 -0800 (PST)
X-Received: by 2002:a02:cc7a:: with SMTP id j26mr8580489jaq.79.1581839258267;
        Sat, 15 Feb 2020 23:47:38 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1581839258; cv=none;
        d=google.com; s=arc-20160816;
        b=WPP26DQxDZ5piGH0SbHOK03RuQRo0o457Kh/Qj95XvQ/n7/1xCC3BVV/mHe1CQhHJb
         1+6+xRMBQen2V0yaVT7BM5yaZKARo8nVEdndPA0Z1C4/dMTEiVlca9FnmLXj1tTGfW9u
         M+l0LdPy5xZp4etCuDt+Rtf2qMDl/BF1gPF5Qr1x4cLzxmkfedqw51A2K/U6+0PHLUv6
         y8sWRmywU8lKjyyro9V5zpASGPXNLVQ/qkYBFd6/14NWkJnIh2dZdPfAe90Vuj1pqLKc
         8Q3QGZm/DhaSJJZB+XwsfvRaosHjk6U70AweuoMtLuQIYponho12GTqwiWsnGj9s0Xdi
         8dwg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-transfer-encoding
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=t9s1T3eocQw5dgvxMojafgwpl5YoO6h8bjzIOUjQhy0=;
        b=hpC+mcfKe7n96w3jgX69QCY/6U1+LlZ79gqqo7cli3ttCVbI1HtQDIx1TRM7tdBoI2
         5NnUomB9mh6ZulAOj4q3J3+Bq96ewE4cHJLu1CsYijk/KBf+2+ulrvDhYbXeng6g7Iwk
         EnhBS7wg7/m2IG8jAq7epFAfNvMcthjY+4gttkdQ9z2Tu8siNc3Zdm26oDW6afMm0njz
         yg3+qr5GGrHtvqRbxLXIp/EQVK/cPHIGmD2c7IWMJov8JGsRvIRQq/LfD28fZp9dNIB/
         DJPF++QIV6hQSskUjbVAQArYFJi+nPsK5P3CQBSIazvTL1wsyhfJHF4+ehCijaXS+KhD
         YgTg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=nSbdy3sa;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::342 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-ot1-x342.google.com (mail-ot1-x342.google.com. [2607:f8b0:4864:20::342])
        by gmr-mx.google.com with ESMTPS id z7si752132ilz.1.2020.02.15.23.47.38
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 15 Feb 2020 23:47:38 -0800 (PST)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::342 as permitted sender) client-ip=2607:f8b0:4864:20::342;
Received: by mail-ot1-x342.google.com with SMTP id p8so13146558oth.10
        for <clang-built-linux@googlegroups.com>; Sat, 15 Feb 2020 23:47:38 -0800 (PST)
X-Received: by 2002:a9d:6d1a:: with SMTP id o26mr7860793otp.141.1581839257856;
        Sat, 15 Feb 2020 23:47:37 -0800 (PST)
Received: from ubuntu-m2-xlarge-x86 ([2604:1380:4111:8b00::1])
        by smtp.gmail.com with ESMTPSA id p184sm3601382oic.40.2020.02.15.23.47.37
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Sat, 15 Feb 2020 23:47:37 -0800 (PST)
Date: Sun, 16 Feb 2020 00:47:35 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: David Hildenbrand <david@redhat.com>
Cc: "Michael S. Tsirkin" <mst@redhat.com>, Jason Wang <jasowang@redhat.com>,
	virtualization@lists.linux-foundation.org,
	linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com
Subject: Re: [PATCH] virtio_balloon: Adjust label in virtballoon_probe
Message-ID: <20200216074735.GA4717@ubuntu-m2-xlarge-x86>
References: <20200216004039.23464-1-natechancellor@gmail.com>
 <67FCAE69-05CF-4588-A7BC-664267D14BAF@redhat.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <67FCAE69-05CF-4588-A7BC-664267D14BAF@redhat.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=nSbdy3sa;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::342 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

On Sun, Feb 16, 2020 at 08:36:45AM +0100, David Hildenbrand wrote:
>=20
>=20
> > Am 16.02.2020 um 01:41 schrieb Nathan Chancellor <natechancellor@gmail.=
com>:
> >=20
> > =EF=BB=BFClang warns when CONFIG_BALLOON_COMPACTION is unset:
> >=20
> > ../drivers/virtio/virtio_balloon.c:963:1: warning: unused label
> > 'out_del_vqs' [-Wunused-label]
> > out_del_vqs:
> > ^~~~~~~~~~~~
> > 1 warning generated.
> >=20
>=20
> Thanks, there is already =E2=80=9E [PATCH] virtio_balloon: Fix unused lab=
el warning=E2=80=9C from Boris on the list.
>=20
> Cheers!
>=20

Sorry for the noise, I thought I did a search for duplicate patches but
seems I missed it :/ I've commented on that patch.

Cheers,
Nathan

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/20200216074735.GA4717%40ubuntu-m2-xlarge-x86.
