Return-Path: <clang-built-linux+bncBDEKVJM7XAHRBUXUU7UQKGQETOR24RY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3f.google.com (mail-io1-xd3f.google.com [IPv6:2607:f8b0:4864:20::d3f])
	by mail.lfdr.de (Postfix) with ESMTPS id 88EF367AF0
	for <lists+clang-built-linux@lfdr.de>; Sat, 13 Jul 2019 17:35:48 +0200 (CEST)
Received: by mail-io1-xd3f.google.com with SMTP id e20sf14423233ioe.12
        for <lists+clang-built-linux@lfdr.de>; Sat, 13 Jul 2019 08:35:48 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1563032147; cv=pass;
        d=google.com; s=arc-20160816;
        b=bLS+KQzM8tk8N6wKtEnzxDAqi1aOJ83KBnSKtiNmWZY8zlfKMG65PkPmfI9PE0QBZc
         tlRdtwc4mhO6qsoEvm8D8O3eE5VYrfgPQOj2EGj5dBnDBUyIuEfqJBooFs94a5AEpbF2
         aMlhRacm2fG1RT1l6GxdgL43wct+vSoxbkI0DXZ+vJuzNjEUR4VPtqn05FbfRgd2UZu/
         RnXmeqACCKSLLCBGIv5VVaYGf8Qw1QMehxusnJVp5eGARpO6PkJZpGlP4NkjZDK6LtaO
         8XTYtThqVCr/26HdhkQEZlzGLzRS8SEHVW6nzFXvMvdX8Gl/uH3lKE7SBPOSDhipmhB3
         Qp7Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=/3P/eKC43pGKMbuDGiK+5tvx2UySpxvce+k42zcfiCc=;
        b=cyXz4vsjdFQfDhbX10EuembTx4SM6f5mj40DPNxIcD9FEQ3vSFek6CRLwI5IXGVphl
         Gf/OsiHxS3bGAgkx9hnkG9o5pWNGKF5QnZ82zGrx576voxXvG2uYfrI3MSdu+ccfZEKK
         SaH2dLUSw+NneVCPKjnHxYxRyP/TCP+vrXQm11NS/r8SKvhR1xbx87kfXf3rhOArM0Bv
         Ss+D/VVPxHzajEptjc9du25yQnBws+SfVrDmXISugtDI4WL3PQkUYLiLjoNBG+0VRpsh
         EOwZVEnA1/Xg3WcUeQJJvW2Hmwcv28EQHlJgFB4z4ttBGliH3cclMfWbSdHnoIlD6Yyv
         iZCA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of arndbergmann@gmail.com designates 209.85.160.196 as permitted sender) smtp.mailfrom=arndbergmann@gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=/3P/eKC43pGKMbuDGiK+5tvx2UySpxvce+k42zcfiCc=;
        b=A+0m8P4c8er7tz8uPZ2KD9h00uPSqYyT6Dw68IyHC4YiLLMLiB0fykEbR1lOXixpYd
         M332YI1VBShpUfeukVG+usbBOYqwH4yBMP4UAKg3uVQntx7iVzmJfDRTinmcXOYuIy+J
         BabXrBclNUVmCmvE+bt0uZnPBj69ttnlUudzELQLchO80RRxxs2G2Pn73yupeq/IdrzE
         639VZ75WNwJ/I1dpOYO3/frEsmAEf8kbcJ04kWGJ4L4+1SFEp7sUqppAVg1F+C0k11hk
         yXnvieA/n+WLLFyN71xac4DzZCFC3mZ9tmSHtEvytf3F0b+1tCnQPc1rXNth1T0388qi
         DCpA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=/3P/eKC43pGKMbuDGiK+5tvx2UySpxvce+k42zcfiCc=;
        b=DdFrGKJsku7B84YGg6uVzQum6uXqPWecO65HL3VNKOPF35wi+so9mI68iGInfD+aGv
         bDoFN4SIZsg0DQymg8WPz6ggOm4IfcK7A1bEnyPco/bFbgk3A7mOZI8PPjYI7HLEcnYo
         UhVB6XSYmNf+Cd9ZivboDfVJ/Z49nFFJppBdrmuRp3oJQ1ps04qdwgfGnRfrtO6VBAa/
         +V651Jh+H0F+vqazdhbXEZ0tIx0MOjG2ARTw/kyd5sh8/kq/UK7pzYwqawbynnEcAs/3
         tbWQI5MAUhknlVQ11dUx5/QkYUs7CeqfA2FwhD4mzycgdsyh2qSHXr20hMytU4byvCKE
         G8OA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWf+sfCuFB6o8EMuF9J6iF0YFZElIoesL2GSXoLGIlmqs3cVWVz
	QzDsPfiPC/uWHKLcmhLy/qg=
X-Google-Smtp-Source: APXvYqzjZ23bcU9n/CRVN4iV7dUiJfuSz4AtAhMAl+ma3axaRmnFhN75zN3lDks8qKbXnnAcbL4rGg==
X-Received: by 2002:a05:6638:149:: with SMTP id y9mr18073418jao.76.1563032147128;
        Sat, 13 Jul 2019 08:35:47 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5d:8d17:: with SMTP id p23ls3801231ioj.14.gmail; Sat, 13
 Jul 2019 08:35:46 -0700 (PDT)
X-Received: by 2002:a6b:7606:: with SMTP id g6mr7366254iom.288.1563032146676;
        Sat, 13 Jul 2019 08:35:46 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1563032146; cv=none;
        d=google.com; s=arc-20160816;
        b=WgMx4H9d2gWgHasqiIHxuGTIpWq4si5v75hm9NbQIDWPXaAn/4aN2bpzwf6CKwVW86
         UVGoK3ApHP7naj/CcXUsvN0KXL516i6x+XvzFO3wRa2m+YehrDH+s+KI6F8iinRql8vL
         Hm7FZvG1YnL3LQVWao7N3wuO4XVVdKn8RvWDtWomx6K1+v66OvWlwg+nM+C5sWNusbsN
         8qp8Sbi3RWkMJZ3QEWMZma/Scwrri0/BwxCLWVdWhdANTWb6Fw/W1RKT4Hm6saoaEWeD
         YfH5sVqTDQOISFz7ekZj5EYPCXUNV7+ktyvvzac4KyTSPfBthk1jHXi5z7/TrHv2vcHv
         xmpw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version;
        bh=/SFjgyvYpOtxlwc4ojENp06eD74+gSpEUYF2scggOfQ=;
        b=yVM7h80m0f5WoRbQuw4s5XGm6QyKsnp3kTPIFttZvVnNd+zJ+kGtZzR81g8+wuqxmk
         iFiqMGiaeegRA6xeHdyd0cIiDF3kq03849nPM+BUlaEXlippjqr3x6bxXrK9tcRDMX8n
         wSVErCOYQ0tQKyfkiGMMpnFlP9ZVdSzgiUHw81NabGtHZg/FEx4z+6jGYhAgjYxT5oVU
         lzaRCLD8lzwWfFQwgXIs3KdwzF2Yr0TN6gbuk+xMw2Bhamjj+v8maWsgE7gGc7FZJddN
         sJQFc3gzTfIdjz/KFS4O8AWcVv7NBY4Ab2P1cR1Hw0s4SfKWjZu9XRrHjadrovD31rTf
         yiIg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of arndbergmann@gmail.com designates 209.85.160.196 as permitted sender) smtp.mailfrom=arndbergmann@gmail.com
Received: from mail-qt1-f196.google.com (mail-qt1-f196.google.com. [209.85.160.196])
        by gmr-mx.google.com with ESMTPS id m190si620497iof.3.2019.07.13.08.35.46
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
        Sat, 13 Jul 2019 08:35:46 -0700 (PDT)
Received-SPF: pass (google.com: domain of arndbergmann@gmail.com designates 209.85.160.196 as permitted sender) client-ip=209.85.160.196;
Received: by mail-qt1-f196.google.com with SMTP id r6so7191094qtt.0
        for <clang-built-linux@googlegroups.com>; Sat, 13 Jul 2019 08:35:46 -0700 (PDT)
X-Received: by 2002:aed:33a4:: with SMTP id v33mr10880166qtd.18.1563032146072;
 Sat, 13 Jul 2019 08:35:46 -0700 (PDT)
MIME-Version: 1.0
References: <20190712090700.317887-1-arnd@arndb.de> <20190712.153632.1007215196498198399.davem@davemloft.net>
 <82ccdd83d2a18912bb8cf75585e751c0bd39a215.camel@perches.com>
In-Reply-To: <82ccdd83d2a18912bb8cf75585e751c0bd39a215.camel@perches.com>
From: Arnd Bergmann <arnd@arndb.de>
Date: Sat, 13 Jul 2019 17:35:29 +0200
Message-ID: <CAK8P3a1eGXyZdXrkyhkXzvHt38J1wOzywU-+uxqnAYOnRVJtcA@mail.gmail.com>
Subject: Re: [PATCH] [net-next] cxgb4: reduce kernel stack usage in cudbg_collect_mem_region()
To: Joe Perches <joe@perches.com>
Cc: David Miller <davem@davemloft.net>, vishal@chelsio.com, rahul.lakkireddy@chelsio.com, 
	ganeshgr@chelsio.com, Alexios Zavras <alexios.zavras@intel.com>, arjun@chelsio.com, 
	surendra@chelsio.com, Networking <netdev@vger.kernel.org>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: arnd@arndb.de
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of arndbergmann@gmail.com designates 209.85.160.196 as
 permitted sender) smtp.mailfrom=arndbergmann@gmail.com
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

On Sat, Jul 13, 2019 at 2:14 AM Joe Perches <joe@perches.com> wrote:
>
> On Fri, 2019-07-12 at 15:36 -0700, David Miller wrote:
> > From: Arnd Bergmann <arnd@arndb.de>
> > Date: Fri, 12 Jul 2019 11:06:33 +0200
> >
> > > The cudbg_collect_mem_region() and cudbg_read_fw_mem() both use several
> > > hundred kilobytes of kernel stack space.
>
> Several hundred 'kilo' bytes?
> I hope not.

Right, my mistake.

       Arnd

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK8P3a1eGXyZdXrkyhkXzvHt38J1wOzywU-%2BuxqnAYOnRVJtcA%40mail.gmail.com.
