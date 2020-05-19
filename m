Return-Path: <clang-built-linux+bncBCD3NZ4T2IKRBI76SD3AKGQE3MPICCY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x33d.google.com (mail-wm1-x33d.google.com [IPv6:2a00:1450:4864:20::33d])
	by mail.lfdr.de (Postfix) with ESMTPS id 0EC7B1DA263
	for <lists+clang-built-linux@lfdr.de>; Tue, 19 May 2020 22:18:44 +0200 (CEST)
Received: by mail-wm1-x33d.google.com with SMTP id f62sf191019wme.3
        for <lists+clang-built-linux@lfdr.de>; Tue, 19 May 2020 13:18:44 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1589919523; cv=pass;
        d=google.com; s=arc-20160816;
        b=wezCjPKbrU+0uY7Lv/lkxB7v4+26SibLrD5pucdaEiXFTOLevN+TFHKbbDOEyKcwyj
         ZW9x59iaYFFSql0rvysmsexx1eyZasNW3jLvXMkb3MKKmR6f6JX2NuW9p0MZrZ8zDfWi
         bvxT6Nkc+IisdFGDme7RDSlZIKGHEax1KuPyILwC2448T1yxOVRFPZVhond0WnZxGV77
         6kufHVpWTxRVxH86uYELQYsPnLG6iZiaDJqqzBeF4D6XimC6SJXL/9xgq3I3a5z5b/dQ
         VIW3FagS2+TNaf0clj5MI1QqMETnrcww4yeDGtvX2b0h35Icphxv9P3jLINrunm6haGy
         HIaw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=Lcpv6YkeejLyAB49ILLhCWMmJopon5ZOsBgmV7jBgIY=;
        b=YXXz+iOXzx8VtKlVM4+mjJ+E41sX4vHWLMdpjUObbHfyZWddmo1HK3tyJkaYqjGDgq
         11S404s585D6sdic692qHDhD4c9VY/NdfgtRw1GlSZvvNGLBw8ZTezA9rcU8k8QaKWdU
         OaBAqJnyhmDfKCaOUzoTTBac2Pe74NH1J04i593trPcxe1JjU0AGLNjFpnF9iV3mR4zS
         o7LGLZQtPPiCSdY56Djaz7BO2GPKWrFOTHiubxX/RQOoRTy6DTe/8rlYKW+aiv+WBdex
         nCqx4Bt9HWK6Y5dochmWSBU725ynioQfp33j+Z2VvBoOh3cqQCROYQWJmxwr8WtcLI8Q
         RdKw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@lca.pw header.s=google header.b=ZByOxcWZ;
       spf=pass (google.com: domain of cai@lca.pw designates 2a00:1450:4864:20::642 as permitted sender) smtp.mailfrom=cai@lca.pw
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Lcpv6YkeejLyAB49ILLhCWMmJopon5ZOsBgmV7jBgIY=;
        b=UQce7rcUfbFuNSBtFXMP22Oz+uWsB4lgpGD5rnAp8SPQ6lhW+X+B/VS87hAZrqBF7w
         c+hkISBI3mJO8At2YbiR21tx9RJ/2XueAkL829Kw0ABM9HumC8+tr61fJ+hB6EzYW+UB
         cdwP32/wkai+uOA5BcgcaftYkeeyFycoDUx7z4UxJnyERAHXproLnhrp2UD4TrKV+/5w
         wtQqQ+pqPd/aHMRjm0BJaMbNS40InmOiOCzV4mCZAJOj4xYdLv18005NZRAkAJ6AAmGk
         oGdt5A54x/M1WFXQP0vJs9jKql16g9LN4J3ieNLV6dnxkCTJUDTDOxRn4C8I9yuVik5M
         CDpg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Lcpv6YkeejLyAB49ILLhCWMmJopon5ZOsBgmV7jBgIY=;
        b=P6c1HIAaKCG9i7tui2j49Hrr0S6/oLa9iPpxQYXe/rrJOrfn6bRxPZoVWiC5vwNzIo
         dJqenb+NMnXN0mAlh5bcBRg+bvMdmoyT2u9GEPisLahJ9Jn+y6MktzTyeI36oAb7E+1M
         kVMD/XSmkmEiL5a9JmmlzPYQE7LDJj2D7YACRFMXrts6Ju6JWTQHK0kJHjkx1obr97A0
         HBInn0K9ZwNmXwgRJxPlgEQjdHyZK8DBnOjDdhgpn1mOQfTQHVAVaIpgj6oceFclXudc
         O/JMkCaPxMsZTaGFh0YctRzDmAs3tiHVVkoDakwJCr/jeHD61jJY9HWQ4WxMkXTWxMQe
         u7pQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532dJrDNeOe88HqfNhKijplUZATgrQfpp1Zb+WkjMIho6FW5fgSA
	vej2cXFuPV7yDw/7AInXJ+s=
X-Google-Smtp-Source: ABdhPJzlFEddbY1wLH8DqLUAJyYFERulIb2pQsWKJ7Fxw7ACPIFQ+gf6Kbar99WPtUHkeLKtTHFr8A==
X-Received: by 2002:a1c:bb57:: with SMTP id l84mr1197623wmf.128.1589919523740;
        Tue, 19 May 2020 13:18:43 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5d:5224:: with SMTP id i4ls861584wra.0.gmail; Tue, 19 May
 2020 13:18:43 -0700 (PDT)
X-Received: by 2002:adf:f907:: with SMTP id b7mr619107wrr.203.1589919523146;
        Tue, 19 May 2020 13:18:43 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1589919523; cv=none;
        d=google.com; s=arc-20160816;
        b=gKpIuvkqV/ZbXdR0yG3NQY+cVNT0Lwmz3NpSIpq+A0BkmW+BRzUPRdvHwqqoybt6K3
         nzsSYmOghQe6nWua3WNvHDfAjlymBN2inAhkKxNAkR3PwjgVB1B3Ix2hDHGPlgeYZGfo
         +Z1oRhkoodA0T++uhtZr2x+emedo6mj53VzDc6mQCeFQAgMtM7Fz/IX/u7JaBd2X6Tij
         MYVRYXm6Di7IeDobjGXY02Ai/ieb1Q1p5yJN8t8Vxw/80ji3OTLy/vo64HNN8GLbX9u+
         b0hG0bIXYpbUuq/he3jCXkaChp6Oa+kmMqwfTAFyxuLJwfuvgXIwkHS4IQfpwVnD1kev
         mtQg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=lL4ozjO7sIu89/0ZdtpZ+grNZO7La5memrjZAz9fUk0=;
        b=eQiUysZD0JCzP0jPAVNcxiD9UE0gDjGQnt+RQizwWwQtt7W1s8e4k5ACfsrPYq0K8Q
         7E6f/N77hLzkwW7jlsuFRMJvZMkMxTnjzgWLiYqJckdBD2SxDLxsUrAMOpy/UCShJ2Rv
         gvWHzW6fsl+Q+YFLmOSk/AzqVfgmLmZ30N4q3k65ePJSIhpdZPlxxUdjJ6nOpkNsz9+8
         //eahszeJX9y8oKlITR6IEQuZhZ8DJj+AEyiWM7ovuVFfRa8kZV9Z/NXqFFTsIujvj6P
         F6ANTw+LDhOnydEbms/HselpuP4QJjyCpp2qIBjpzrSgp4M2EA8ApOW+uljFi+SHRLjS
         J2og==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@lca.pw header.s=google header.b=ZByOxcWZ;
       spf=pass (google.com: domain of cai@lca.pw designates 2a00:1450:4864:20::642 as permitted sender) smtp.mailfrom=cai@lca.pw
Received: from mail-ej1-x642.google.com (mail-ej1-x642.google.com. [2a00:1450:4864:20::642])
        by gmr-mx.google.com with ESMTPS id a22si281953wmd.4.2020.05.19.13.18.43
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 19 May 2020 13:18:43 -0700 (PDT)
Received-SPF: pass (google.com: domain of cai@lca.pw designates 2a00:1450:4864:20::642 as permitted sender) client-ip=2a00:1450:4864:20::642;
Received: by mail-ej1-x642.google.com with SMTP id h21so510440ejq.5
        for <clang-built-linux@googlegroups.com>; Tue, 19 May 2020 13:18:43 -0700 (PDT)
X-Received: by 2002:a17:906:934d:: with SMTP id p13mr869611ejw.452.1589919522687;
 Tue, 19 May 2020 13:18:42 -0700 (PDT)
MIME-Version: 1.0
References: <CAG=TAF6mfrwxF1-xEJJ9dL675uMUa7RZrOa_eL2mJizZJ-U7iQ@mail.gmail.com>
 <CAEf4BzazvGOoJbm+zNMqTjhTPJAnVLVv9V=rXkdXZELJ4FPtiA@mail.gmail.com>
 <CAG=TAF6aqo-sT2YE30riqp7f47KyXH_uhNJ=M9L12QU6EEEfqQ@mail.gmail.com>
 <CAEf4BzaBfnDL=WpRP-7rYFhocOsCQyFuZaLvM0+k9sv2t_=rVw@mail.gmail.com>
 <CAG=TAF5rYmMXBcxno0pPxVZdcyz=ik-enh03E-V8wupjDS0K5g@mail.gmail.com> <CAEf4BzYZ9LkYtmiukToJDw1-V-AFbwfB2jysMU9mM3ie9=qWHw@mail.gmail.com>
In-Reply-To: <CAEf4BzYZ9LkYtmiukToJDw1-V-AFbwfB2jysMU9mM3ie9=qWHw@mail.gmail.com>
From: Qian Cai <cai@lca.pw>
Date: Tue, 19 May 2020 16:18:31 -0400
Message-ID: <CAG=TAF45T4pKew6U2kPNBK0qSAjgoECAX81obmKmFnv0cjE-oA@mail.gmail.com>
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
 header.i=@lca.pw header.s=google header.b=ZByOxcWZ;       spf=pass
 (google.com: domain of cai@lca.pw designates 2a00:1450:4864:20::642 as
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

On Tue, May 19, 2020 at 3:30 PM Andrii Nakryiko
<andrii.nakryiko@gmail.com> wrote:
>
> On Tue, May 19, 2020 at 8:00 AM Qian Cai <cai@lca.pw> wrote:
> >
> > On Mon, May 18, 2020 at 8:25 PM Andrii Nakryiko
> > <andrii.nakryiko@gmail.com> wrote:
> > >
> > > On Mon, May 18, 2020 at 5:09 PM Qian Cai <cai@lca.pw> wrote:
> > > >
> > > > On Mon, May 18, 2020 at 7:55 PM Andrii Nakryiko
> > > > <andrii.nakryiko@gmail.com> wrote:
> > > > >
> > > > > On Sun, May 17, 2020 at 7:45 PM Qian Cai <cai@lca.pw> wrote:
> > > > > >
> > > > > > With Clang 9.0.1,
> > > > > >
> > > > > > return array->value + array->elem_size * (index & array->index_mask);
> > > > > >
> > > > > > but array->value is,
> > > > > >
> > > > > > char value[0] __aligned(8);
> > > > >
> > > > > This, and ptrs and pptrs, should be flexible arrays. But they are in a
> > > > > union, and unions don't support flexible arrays. Putting each of them
> > > > > into anonymous struct field also doesn't work:
> > > > >
> > > > > /data/users/andriin/linux/include/linux/bpf.h:820:18: error: flexible
> > > > > array member in a struct with no named members
> > > > >    struct { void *ptrs[] __aligned(8); };
> > > > >
> > > > > So it probably has to stay this way. Is there a way to silence UBSAN
> > > > > for this particular case?
> > > >
> > > > I am not aware of any way to disable a particular function in UBSAN
> > > > except for the whole file in kernel/bpf/Makefile,
> > > >
> > > > UBSAN_SANITIZE_arraymap.o := n
> > > >
> > > > If there is no better way to do it, I'll send a patch for it.
> > >
> > >
> > > That's probably going to be too drastic, we still would want to
> > > validate the rest of arraymap.c code, probably. Not sure, maybe
> > > someone else has better ideas.
> >
> > This works although it might makes sense to create a pair of
> > ubsan_disable_current()/ubsan_enable_current() for it.
> >
> > diff --git a/kernel/bpf/arraymap.c b/kernel/bpf/arraymap.c
> > index 11584618e861..6415b089725e 100644
> > --- a/kernel/bpf/arraymap.c
> > +++ b/kernel/bpf/arraymap.c
> > @@ -170,11 +170,16 @@ static void *array_map_lookup_elem(struct
> > bpf_map *map, void *key)
> >  {
> >         struct bpf_array *array = container_of(map, struct bpf_array, map);
> >         u32 index = *(u32 *)key;
> > +       void *elem;
> >
> >         if (unlikely(index >= array->map.max_entries))
> >                 return NULL;
> >
> > -       return array->value + array->elem_size * (index & array->index_mask);
> > +       current->in_ubsan++;
> > +       elem = array->value + array->elem_size * (index & array->index_mask);
> > +       current->in_ubsan--;
>
> This is an unnecessary performance hit for silencing what is clearly a
> false positive. I'm not sure that's the right solution here. It seems
> like something that's lacking on the tooling side instead. C language
> doesn't allow to express the intent here using flexible array
> approach. That doesn't mean that what we are doing here is wrong or
> undefined.

Oh, so you worry about this ++ and -- hurt the performance? If so, how
about this?

ubsan_disable_current();
elem = array->value + array->elem_size * (index & array->index_mask);
ubsan_enable_current();

#ifdef UBSAN
ubsan_disable_current()
{
      current->in_ubsan++;
}
#else
ubsan_disable_current() {}
#endif

etc

Production kernel would normally have UBSAN=n, so it is an noop.

Leaving this false positive unsilenced may also waste many people's
time over and over again, and increase the noisy level. Especially, it
seems this is one-off (not seen other parts of kernel doing like this)
and rather expensive to silence it in the UBSAN or/and compilers.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAG%3DTAF45T4pKew6U2kPNBK0qSAjgoECAX81obmKmFnv0cjE-oA%40mail.gmail.com.
