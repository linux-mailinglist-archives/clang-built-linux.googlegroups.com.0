Return-Path: <clang-built-linux+bncBCD3NZ4T2IKRBG7JR73AKGQEZBD74CA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x437.google.com (mail-wr1-x437.google.com [IPv6:2a00:1450:4864:20::437])
	by mail.lfdr.de (Postfix) with ESMTPS id B385F1D9A8E
	for <lists+clang-built-linux@lfdr.de>; Tue, 19 May 2020 17:00:43 +0200 (CEST)
Received: by mail-wr1-x437.google.com with SMTP id p13sf6253375wrt.1
        for <lists+clang-built-linux@lfdr.de>; Tue, 19 May 2020 08:00:43 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1589900443; cv=pass;
        d=google.com; s=arc-20160816;
        b=VjgCOlLBgjRZULSxUOu7QjHazCwiP2nbl1Ps1nxvkyKqKGI4Sow0WzArA92hvJE/Hx
         FF1zOrB8CRPT14vZCNZTdZYQSfoZgYUXnggrOyLMp2X8WxwHpyrh7op4RsKCcuE2M1DM
         hPSMqmTX8s/dY+3aWfblV44ur40Fc91wnZlSpox07TbD9DLzvd12cSODFo+v6MUt0iIM
         dtriCNjKuN26agbqEuNg54CazCklcyOM4pPzX1waczoMVCjD5DbanGxojOFMaXns+am6
         Z7lekcTrlkq8EvF1JTAiiPnq8SwRgwf2VQm4ZUhHWiFfNyzcfNkpj5uEIVq09QPgMheY
         kzzA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=fILHQS3MM+MzzD5pBVaE2JjUcYXmRH4xL0DRa0Aky3c=;
        b=Ryt/CsEoAyhI+3tUSF031OVZwaG0XING//wwQLfdrXUu+X6TqEXNmRUHB+BpsoQXCJ
         EBBbvFokHuEgcQxW5/O7bF7oQHZ7EiJNUX8+2I1Jb623gnXM6ioeZVBqJb73ziMezLVn
         Ai06gru5AhWDgXWuSWfdqyyV89Og+cZIb9AKY2ioaqdIeTGClcT5SZST+8d3Wp8GFZ84
         omWrgyu8uT7Tet64iGInHXFve0VIvTuXlhLAuVBA0xYU05cQ1inh9YVeBMBRQMJMRYt6
         ibeEBi7fYHwzBJXPttj2tnmTbICIVKcmGNaX0wpwAD0koSZ//XO7M7/4DN+JYcETUyDf
         7ynQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@lca.pw header.s=google header.b=bEyFs82H;
       spf=pass (google.com: domain of cai@lca.pw designates 2a00:1450:4864:20::541 as permitted sender) smtp.mailfrom=cai@lca.pw
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=fILHQS3MM+MzzD5pBVaE2JjUcYXmRH4xL0DRa0Aky3c=;
        b=eiZSAhzyhFBIMow8VqDSw9+pxE3Ahhx0+QDlwKDGJJYg99w0WqLSHY9Ze8x/RjyksJ
         F1sGXddyc1x6k4d7kOWoOBN8UJnvM6aIFnIuMNHo9zQOM6eOUBtNB/8vPbTXryWXo8uo
         J6KrNPGHUeE+lM2iZdw0MxxEtBrWzSNUH9mJC+zDLqsBTJw8BSuaIZUv1NYAid4jtWaf
         mN7DYqQ4pvyqZXhyMH2DR4fFXXYkP/KnmyhJABVuil21lvWMNj/KXPXxtNQ3/fkYeLVg
         tyaTU6NzLHkMe86EArwsL9/luypGEGdn6Rcj0yFkaLVsADeJG/jOVqLl8dOUTSkS5RwW
         U3Cg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=fILHQS3MM+MzzD5pBVaE2JjUcYXmRH4xL0DRa0Aky3c=;
        b=lR0r5JJzeVfQrSII7wSgVtHkZs7+9yR8okZWCAQG+gmD1rS+VpHmbhhM9Fv3BHpypj
         R6MyLd0tzjIEKMHIjse4hFbpUjrijABsXNcWJzJdeIBjhjla1nbS9+1a+bHzTCEDMOCU
         +OAH+zbm2f7lptypo+Jxe4hByhpIT+7ihQ7CWXh7l4GKiE708ad6ZusY7yRDZUnV5Qon
         0k+pUyKtt3Mq1ePIpC2qbWWVXP5KpF9/yY3o9VGKUbrWC2djd1IofxpmMskuuQf2gR/c
         hvKHzyJ4d0REZ3J+FFglnCDTGsDYjc/B5TkKlsONWvOqrMV9bgZiePhKWU8BYAaojX3Y
         C6Wg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533bO/N83Hc/Iz2Q+dHrlN88CfyLsMyykOpjfYM55jjtYkCvnGBw
	tZPg3EslQYipoxKzwSic9qk=
X-Google-Smtp-Source: ABdhPJzBm+7Bs0MdykushjtwHwzr1l5wa3UZuSQM+eoE9DBW4BAq4fGOl+sn7mMQ+YVghQTqxpyXCw==
X-Received: by 2002:a1c:7c0b:: with SMTP id x11mr6064166wmc.149.1589900443357;
        Tue, 19 May 2020 08:00:43 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5d:5224:: with SMTP id i4ls8554272wra.0.gmail; Tue, 19 May
 2020 08:00:42 -0700 (PDT)
X-Received: by 2002:a05:6000:1c5:: with SMTP id t5mr28165561wrx.229.1589900442854;
        Tue, 19 May 2020 08:00:42 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1589900442; cv=none;
        d=google.com; s=arc-20160816;
        b=Bfn+i+nctbIQ1PnyhYAmQL0UfOFj7SCDjWx5WzDa4ihCqxEKQK0IAmAuXus433N4SF
         YNkwSfydPOL41PytzDGkLPCAolugNYjGuxn/KgyoDYuAgY79jgY2cUyrn+tkiVW6mUWT
         2VB+8Xnjjlpi/K598RXFeF8lQuMJZIzffrYfhtZbZdW9yipB963tK1bLY20HQWxeGdsi
         UEKYkglyj2q91awffpF2cr3tqr56eV0O2QYWSjj60n4zf5Elja/pgEGZuE9uEKaulYnQ
         /f6P/2Wx87dj6uO5OCAS/Se7G5yuacvk0uEv9Vuq29zkrBW3kw0Cl4qs9HttAEC5Nphx
         UGDg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=olWeaL9L3Th4SH3qpwoevbMzoFhixmGWtefArTEgTk4=;
        b=ZQwp7oRFRCu3HK1XY1JvB4783fRzO9n57NWTpSXqTmBXIeZXFZWUxYrcnN4Y6+Pda3
         7zu03CYtzxC4PY2hMCaJZUdjxsRnH6KmrlAcr9mKsl0HZHAwUQj5PA5Zks5AQSHezD9X
         fbSFEfeyOJk9CLNYe9qxGrl6iXROJ+/4ynR+yW+CKirA2lMkJHA7W1g/ffldVX9+Oe48
         vAUWnSd+p8d2pgqw/DaOE7PDqbu4rc8nbe16Drg6mydWOd1GyiVqJjbZ8qWYoZA2/vmT
         emDVehRtAB7WLQmn6YpH9bd2YrmINz4MFDYj3rBzP08d29+fogFFXWFdLOP7dtYpmJ1X
         7hlQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@lca.pw header.s=google header.b=bEyFs82H;
       spf=pass (google.com: domain of cai@lca.pw designates 2a00:1450:4864:20::541 as permitted sender) smtp.mailfrom=cai@lca.pw
Received: from mail-ed1-x541.google.com (mail-ed1-x541.google.com. [2a00:1450:4864:20::541])
        by gmr-mx.google.com with ESMTPS id p15si3677wmc.0.2020.05.19.08.00.42
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 19 May 2020 08:00:42 -0700 (PDT)
Received-SPF: pass (google.com: domain of cai@lca.pw designates 2a00:1450:4864:20::541 as permitted sender) client-ip=2a00:1450:4864:20::541;
Received: by mail-ed1-x541.google.com with SMTP id d24so3847890eds.11
        for <clang-built-linux@googlegroups.com>; Tue, 19 May 2020 08:00:42 -0700 (PDT)
X-Received: by 2002:a50:ee1a:: with SMTP id g26mr17925721eds.18.1589900442359;
 Tue, 19 May 2020 08:00:42 -0700 (PDT)
MIME-Version: 1.0
References: <CAG=TAF6mfrwxF1-xEJJ9dL675uMUa7RZrOa_eL2mJizZJ-U7iQ@mail.gmail.com>
 <CAEf4BzazvGOoJbm+zNMqTjhTPJAnVLVv9V=rXkdXZELJ4FPtiA@mail.gmail.com>
 <CAG=TAF6aqo-sT2YE30riqp7f47KyXH_uhNJ=M9L12QU6EEEfqQ@mail.gmail.com> <CAEf4BzaBfnDL=WpRP-7rYFhocOsCQyFuZaLvM0+k9sv2t_=rVw@mail.gmail.com>
In-Reply-To: <CAEf4BzaBfnDL=WpRP-7rYFhocOsCQyFuZaLvM0+k9sv2t_=rVw@mail.gmail.com>
From: Qian Cai <cai@lca.pw>
Date: Tue, 19 May 2020 11:00:31 -0400
Message-ID: <CAG=TAF5rYmMXBcxno0pPxVZdcyz=ik-enh03E-V8wupjDS0K5g@mail.gmail.com>
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
 header.i=@lca.pw header.s=google header.b=bEyFs82H;       spf=pass
 (google.com: domain of cai@lca.pw designates 2a00:1450:4864:20::541 as
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

On Mon, May 18, 2020 at 8:25 PM Andrii Nakryiko
<andrii.nakryiko@gmail.com> wrote:
>
> On Mon, May 18, 2020 at 5:09 PM Qian Cai <cai@lca.pw> wrote:
> >
> > On Mon, May 18, 2020 at 7:55 PM Andrii Nakryiko
> > <andrii.nakryiko@gmail.com> wrote:
> > >
> > > On Sun, May 17, 2020 at 7:45 PM Qian Cai <cai@lca.pw> wrote:
> > > >
> > > > With Clang 9.0.1,
> > > >
> > > > return array->value + array->elem_size * (index & array->index_mask);
> > > >
> > > > but array->value is,
> > > >
> > > > char value[0] __aligned(8);
> > >
> > > This, and ptrs and pptrs, should be flexible arrays. But they are in a
> > > union, and unions don't support flexible arrays. Putting each of them
> > > into anonymous struct field also doesn't work:
> > >
> > > /data/users/andriin/linux/include/linux/bpf.h:820:18: error: flexible
> > > array member in a struct with no named members
> > >    struct { void *ptrs[] __aligned(8); };
> > >
> > > So it probably has to stay this way. Is there a way to silence UBSAN
> > > for this particular case?
> >
> > I am not aware of any way to disable a particular function in UBSAN
> > except for the whole file in kernel/bpf/Makefile,
> >
> > UBSAN_SANITIZE_arraymap.o := n
> >
> > If there is no better way to do it, I'll send a patch for it.
>
>
> That's probably going to be too drastic, we still would want to
> validate the rest of arraymap.c code, probably. Not sure, maybe
> someone else has better ideas.

This works although it might makes sense to create a pair of
ubsan_disable_current()/ubsan_enable_current() for it.

diff --git a/kernel/bpf/arraymap.c b/kernel/bpf/arraymap.c
index 11584618e861..6415b089725e 100644
--- a/kernel/bpf/arraymap.c
+++ b/kernel/bpf/arraymap.c
@@ -170,11 +170,16 @@ static void *array_map_lookup_elem(struct
bpf_map *map, void *key)
 {
        struct bpf_array *array = container_of(map, struct bpf_array, map);
        u32 index = *(u32 *)key;
+       void *elem;

        if (unlikely(index >= array->map.max_entries))
                return NULL;

-       return array->value + array->elem_size * (index & array->index_mask);
+       current->in_ubsan++;
+       elem = array->value + array->elem_size * (index & array->index_mask);
+       current->in_ubsan--;
+
+       return elem;
 }

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAG%3DTAF5rYmMXBcxno0pPxVZdcyz%3Dik-enh03E-V8wupjDS0K5g%40mail.gmail.com.
