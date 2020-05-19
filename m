Return-Path: <clang-built-linux+bncBCD3NZ4T2IKRBVWHRT3AKGQECRW2DXY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x33e.google.com (mail-wm1-x33e.google.com [IPv6:2a00:1450:4864:20::33e])
	by mail.lfdr.de (Postfix) with ESMTPS id 8040C1D8C05
	for <lists+clang-built-linux@lfdr.de>; Tue, 19 May 2020 02:09:58 +0200 (CEST)
Received: by mail-wm1-x33e.google.com with SMTP id f62sf582617wme.3
        for <lists+clang-built-linux@lfdr.de>; Mon, 18 May 2020 17:09:58 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1589846998; cv=pass;
        d=google.com; s=arc-20160816;
        b=Hc78Y1ldUZ8/Pz8s+5LK9IdWpfaoZJT4BOHTgzzLuRoqFQFSXktYYx448f4+Yhp1BZ
         VVI370ouFiqVdiwwREznlAD88BgRDv1PecnbElcbMx+PKwhW+Ory6scC++EOvbWiVL55
         AIo6U3EleWVme50w32daV81dpODRVpksz5OvGK5YRIYSrHZRGW/T7ex1W2REZx6aQODq
         Dc04y+0Spx2WZz7LBV0X4ANu406I0i3UAKqUKxXOoqj5CeUx/ONrJMh4MjLqVP1w6BrT
         0Tugv4F+aD0OOImapnw9ZCb+l3YpcIXBB6bOSAeL390aafqneN9fcsKXhN0y9IHw89b9
         ILfA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=/6ahkU9Y0aLVNfE8t9gpc1jABsQAKzAHbuLhquw6IoU=;
        b=wbqlaI17wgGSUdx05sHpDAXYywBAJpJ5iu0aP1uIaWvJUo15GAsktxs2TeQic17MRs
         Rv4z/c5xaoC3ja4KD4zXt90tdOTcc3tuOgUH3/ZbwWE5mzLKa1GHy1Mb0jwP6IBKaWRw
         sSvNPPj+64ywcZSMVuDaQi3HngmdJ8KUoXvzs7LmCUZkHp9oFaauthIprOD9CaJIJN49
         Do5Rs7iPQ/HsF54Cyfht1VN3AGyJewN8jBks3MflPqjp7kRr8KRUgCGwHHiW/lMwkUSU
         dn4I+gvySUPnlkluOf3/4BczF0HU0PGHO48iPe60YYNMI9nbQzcSkToxFWPhD9qu5CTt
         6HwQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@lca.pw header.s=google header.b=OwsxdxHi;
       spf=pass (google.com: domain of cai@lca.pw designates 2a00:1450:4864:20::644 as permitted sender) smtp.mailfrom=cai@lca.pw
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=/6ahkU9Y0aLVNfE8t9gpc1jABsQAKzAHbuLhquw6IoU=;
        b=JfbMOUdUDaKti8/zvxiNqMDVOKuJR6dHvQ/4hn8n7NlmVEDFpMghosmH/1SwvkXZBK
         mmYBNMKcX+B7I0t+UJHmfFRFqQJn00ScdFWoU7vKpn4T7xwYTya6fSCGe8QbMKpItVo6
         BesbKTXdig+3fbZOZ7SccbgMuF01mRfoDNUjEjfqTP+hpAJ0MDWr+5RGBjT2pN5lSGBi
         YbcOm90f1fYyRl7lenq1KmU+xXqZjRiuxsGen4cLlmaIYacM037xL4K7vA2fyHjvywC6
         MNEZoJfH/RyMtAWiI7B7P9Donuh6wb2WliwVhy+xxOigcDv39AWSRo7ysMHlm1yu4B04
         Xd9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=/6ahkU9Y0aLVNfE8t9gpc1jABsQAKzAHbuLhquw6IoU=;
        b=kyE8Zau4FaWfp9Il4wLPnhFI2aecwcCWivKs9Ne2ht/KllDDJKO30BRow9qFxsF0Hq
         oiEy3lCKGRqp4acC6NqXG4uCXssxGCH2Vq50h6eMvUgIdSk3ojf3YvBNbhwKntuLGXP2
         wYLAWwbDMyZcg1bBiiaMO9BkaYJoc8uWYCkwEuKT+kTL7Xusnl9muv5ZbKqlaQbyk7O0
         hY8NrllGN6MGbwEuyImdlnLa0BtrDapTH/jxu5lUZ8a2dtrtIwcUhRUJAa1VTvVmbFao
         ACW4M8T4Pj8uxGKZDFAVcBP+mq6MxOq4EZTERVK1I+DP7f6mAZME/syqfclxSQgGyubC
         MRIQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533KphXoPR7Hf96ZNiFfCpI9DB61Nli/KhKVDqoN3xdU/KRGeym2
	UWTJTCByMIWGQQRc3frVspU=
X-Google-Smtp-Source: ABdhPJzN7lPVd2r82rJ5nBvOdoe/P+JsXf8NrqGE7JmltoJHPWrwFMM1OpRE/aRTd57lgk4Tdvoflg==
X-Received: by 2002:adf:d0cb:: with SMTP id z11mr23852660wrh.116.1589846998274;
        Mon, 18 May 2020 17:09:58 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a7b:c770:: with SMTP id x16ls594069wmk.3.gmail; Mon, 18 May
 2020 17:09:57 -0700 (PDT)
X-Received: by 2002:a7b:cc0f:: with SMTP id f15mr2158112wmh.78.1589846997825;
        Mon, 18 May 2020 17:09:57 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1589846997; cv=none;
        d=google.com; s=arc-20160816;
        b=UVvZ4VeIIfsbs5HTXMtRQD/k+PkiWj4wLz3DrVuNsunXytBYbkThmeL1TnxBSAFi7U
         yBgMfdeWgDu0Ja9hChpsWCZBJmrP8X+a/Yzis2Z+aYaHHZYUMTiV11GgsZ/IVRg0L43J
         N5LINBsyjkeRJouPshzk4M92yGeI2U5Ex777S/xLd37sSj5fArgQNrR0pyUU/AJcUHk+
         ZD5SXIwTBZtdSHKtJGv7pvpxb2cHMpRDzcfjhqAp5mFMS2KkEc2wy5fR5nGX10/5/dIQ
         PVfSBCiDqAyZaesyAOHaf+Dcy5I7d+MrW0weQ4otaWFoBFcf3ICDt5GP9Wsx4j5y2Rdb
         KFVw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=IxrqFxJdqSnS7VAVDqLnJkOH5P3wut+0z7ZMFgHZj30=;
        b=jkfcSuT3v4meXKZj0sL6RkU89kYttUJr5zbY91FSfliwfB3Xxiai4ZeSyolxcRRaqy
         auHVMTUHXB1EoNxwM/4uPG0oyHorvqj7kxueedwiHJzgFELjf5LuAWtJJxLa+MHqg3yf
         Gnac8jChXETMQzcDVROqesgqApI/zG3SGjz8mKL5VRFEzKEvrxf8CJUE4n3jOIPnhmDf
         QPsLX4afDhaB+uOpD2f/3s+LqLU+n4ywa1Ud/w5binWgJV7/4PIXTqBegbKY9grNY1oB
         QVuCd3wX8YsSYLrUnKux+aJXdR8C7e57dCFBznomgGTVeXOZ/cbmTBG5DIFD+t37HSYM
         d+cw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@lca.pw header.s=google header.b=OwsxdxHi;
       spf=pass (google.com: domain of cai@lca.pw designates 2a00:1450:4864:20::644 as permitted sender) smtp.mailfrom=cai@lca.pw
Received: from mail-ej1-x644.google.com (mail-ej1-x644.google.com. [2a00:1450:4864:20::644])
        by gmr-mx.google.com with ESMTPS id r3si95020wmg.1.2020.05.18.17.09.57
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 18 May 2020 17:09:57 -0700 (PDT)
Received-SPF: pass (google.com: domain of cai@lca.pw designates 2a00:1450:4864:20::644 as permitted sender) client-ip=2a00:1450:4864:20::644;
Received: by mail-ej1-x644.google.com with SMTP id x20so10302770ejb.11
        for <clang-built-linux@googlegroups.com>; Mon, 18 May 2020 17:09:57 -0700 (PDT)
X-Received: by 2002:a17:906:4d9a:: with SMTP id s26mr16447641eju.153.1589846997488;
 Mon, 18 May 2020 17:09:57 -0700 (PDT)
MIME-Version: 1.0
References: <CAG=TAF6mfrwxF1-xEJJ9dL675uMUa7RZrOa_eL2mJizZJ-U7iQ@mail.gmail.com>
 <CAEf4BzazvGOoJbm+zNMqTjhTPJAnVLVv9V=rXkdXZELJ4FPtiA@mail.gmail.com>
In-Reply-To: <CAEf4BzazvGOoJbm+zNMqTjhTPJAnVLVv9V=rXkdXZELJ4FPtiA@mail.gmail.com>
From: Qian Cai <cai@lca.pw>
Date: Mon, 18 May 2020 20:09:46 -0400
Message-ID: <CAG=TAF6aqo-sT2YE30riqp7f47KyXH_uhNJ=M9L12QU6EEEfqQ@mail.gmail.com>
Subject: Re: UBSAN: array-index-out-of-bounds in kernel/bpf/arraymap.c:177
To: Andrii Nakryiko <andrii.nakryiko@gmail.com>
Cc: Alexei Starovoitov <ast@kernel.org>, Daniel Borkmann <daniel@iogearbox.net>, 
	Martin KaFai Lau <kafai@fb.com>, Song Liu <songliubraving@fb.com>, Yonghong Song <yhs@fb.com>, 
	Andrii Nakryiko <andriin@fb.com>, John Fastabend <john.fastabend@gmail.com>, 
	KP Singh <kpsingh@chromium.org>, Linux Netdev List <netdev@vger.kernel.org>, bpf <bpf@vger.kernel.org>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Kees Cook <keescook@chromium.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: cai@lca.pw
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@lca.pw header.s=google header.b=OwsxdxHi;       spf=pass
 (google.com: domain of cai@lca.pw designates 2a00:1450:4864:20::644 as
 permitted sender) smtp.mailfrom=cai@lca.pw
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

On Mon, May 18, 2020 at 7:55 PM Andrii Nakryiko
<andrii.nakryiko@gmail.com> wrote:
>
> On Sun, May 17, 2020 at 7:45 PM Qian Cai <cai@lca.pw> wrote:
> >
> > With Clang 9.0.1,
> >
> > return array->value + array->elem_size * (index & array->index_mask);
> >
> > but array->value is,
> >
> > char value[0] __aligned(8);
>
> This, and ptrs and pptrs, should be flexible arrays. But they are in a
> union, and unions don't support flexible arrays. Putting each of them
> into anonymous struct field also doesn't work:
>
> /data/users/andriin/linux/include/linux/bpf.h:820:18: error: flexible
> array member in a struct with no named members
>    struct { void *ptrs[] __aligned(8); };
>
> So it probably has to stay this way. Is there a way to silence UBSAN
> for this particular case?

I am not aware of any way to disable a particular function in UBSAN
except for the whole file in kernel/bpf/Makefile,

UBSAN_SANITIZE_arraymap.o := n

If there is no better way to do it, I'll send a patch for it.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAG%3DTAF6aqo-sT2YE30riqp7f47KyXH_uhNJ%3DM9L12QU6EEEfqQ%40mail.gmail.com.
