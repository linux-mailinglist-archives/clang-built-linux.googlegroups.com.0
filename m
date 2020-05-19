Return-Path: <clang-built-linux+bncBCTYRDEG7MGBBOPNRT3AKGQEMZAOCWI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63a.google.com (mail-pl1-x63a.google.com [IPv6:2607:f8b0:4864:20::63a])
	by mail.lfdr.de (Postfix) with ESMTPS id D6C1E1D8D1A
	for <lists+clang-built-linux@lfdr.de>; Tue, 19 May 2020 03:30:34 +0200 (CEST)
Received: by mail-pl1-x63a.google.com with SMTP id p20sf8900569plo.2
        for <lists+clang-built-linux@lfdr.de>; Mon, 18 May 2020 18:30:34 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1589851833; cv=pass;
        d=google.com; s=arc-20160816;
        b=iTSsgBPrtpefnhBHExsa3ipaMvRSu8aCDZBABVrLhIuKpqoPMKF6rVOGvUIYG7sWN+
         AVosLpgAP+EogdqNlNAeQZMPhzLdOFcXw8We+jaCB6It8CP76PmVZJ+zzXg5mWWQ0EgL
         GORk/FbxaC5Yzyp7gDEPNb31dHx4SA7qMLLjL5jzvDOXk2jBdIN7uzsMC8kxV2mTYG2v
         2f+qHkcZuVEtpIRXUZblJ1uKW8Aezsh3L4L4NutcGxLDSxozbrXz9qOuxiiAmZbZFo8I
         7Hf5UmmMVdJyvjlaoB+Xr51nuq6Vac0gbwlieBHFadaFXXPawNuW9zgYp5dXGPtteFF3
         Lm/w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=V4ffvWm3BrVcB0hdFoMXYSyt+iYS+FdNRwI20ZgFoyE=;
        b=tvHJbSZI3EuDU4tySJQ2Td9Y0PXsjqOmgo3HrQd8Z9hcoq8xVHuyjoSn8nFOgGfI6c
         u3P2gt8Ym79KVTSaXprC8tgFJLN9uRqHKy3yqM7d7NjazR+5jMGPPS7aXCZsmxcJW8iX
         HoGHn3uHHUIs+6vwNP4OYtYdtum2xj9c2YYDPKPuAmfaQoLN6NsK5cteL4X+/SfCPqkM
         qbfBqi+7+Pa5uWsJRNpI3BTP0PSk3q3aYG06XaXgL/Qrplx+3QgK6pnDO+PBNcwyXJFy
         u+Ij+jBcExyn1/0CMsMqpymEC2JlVd0+HiGHLTWzY7NkTa/dKkkRtp94KUZnrNOa6M3z
         +y0Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=I75n233f;
       spf=pass (google.com: domain of andrii.nakryiko@gmail.com designates 2607:f8b0:4864:20::f44 as permitted sender) smtp.mailfrom=andrii.nakryiko@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=V4ffvWm3BrVcB0hdFoMXYSyt+iYS+FdNRwI20ZgFoyE=;
        b=jO8Jklk9EPNR9EiQjPVGVGfGtzFL8U1EbhMeRRateNA5+Ds/w7R2q6b7eSt27rkc5w
         xp61YUDqdlMiF2aZRc1lxrBFMEHX66/Eb9Zxt7ctKKaJXiPQHPFs6xUFFY14A5hTitVb
         A/RZv4mb90WCfIAyIYHGrSVrfPo4SC6ky8HCsaaKww9+jGTUCSSj7mibWS3j22+HCN6o
         907l8zumKpujdO2jYPIxpF4Q9DPSU7mkCu/2byyB546AJzmmeLaHNSJpXqws3obwPiaN
         9Ovm0qBx9qkCXDFKPtV0KTkuWb2yMivmtsF23yS6hrnRYZi8LmIAhLMTKI/VRH/BrO1D
         m0Xw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=V4ffvWm3BrVcB0hdFoMXYSyt+iYS+FdNRwI20ZgFoyE=;
        b=rJ+nN3NVfaOuwMRJKgwyvb88GdbU9nHV315RflTz7g7qbVdALYPUwIfZR/0wcmZ/qz
         iaUFwbDxbltzXjb0G8m/O5o89lIqO1wLroPkZdos//0miQbEZqbTmSyTOsvCdZ4GTZXY
         Cs/LRGaEdkH3X/nti3ZVYy2rBeNKQhvFDs6ahEqh6bVpTXAsusPdzFSj1r6Xuk/6KTAp
         RMCKG/8k1dkTYC8bG16fx4Pr/WkBCcahx//dJbxlIsUt2sXZy4OsmfXEEqy+n3vuwOpT
         /HNrdDAy0iPqjjPOCUrJzPsRCnBT+X7N9ycCTrqD9h7g2lngyKyuB1t27xECkvcdPPuO
         /ZrQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=V4ffvWm3BrVcB0hdFoMXYSyt+iYS+FdNRwI20ZgFoyE=;
        b=Sqd0Az9h+W2SRzefenafLFuDCp0Xo2gKRzk2/CP0DxTEp5hbBp7f6z4l3bGVLHGgrb
         1bJN3azL5JIWiN1tcVFAZWr37URY71QJbyNqXhgumoHL5Cyuba5w5iRuBFfDzLj4u1/3
         XNVaHOI99KcN9FuRwfWwbj5NoIhroXm+xvpMLcDE03215es8pR/j5/1Bqf8SkLQbUk4s
         2lKBGB5U7ciKhXToz56TySmDVmkwAbcOGdFnKArFgW2O5hDkOeMdtMeL3MrPfqG5LGLp
         MVd3BTg5BDfcDrruIUKTT/bGyWrlpCiRrgoBeM7tXgKh8kXrY7/D/RvMXAD6mjSXfvBx
         09dw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533HAvc+85NDOYzG5W+3NI9TYMgGvUNFjI1YBhgT58hjrXOdwGvz
	QfBdK1jpN8+Sn2KwqFepvYM=
X-Google-Smtp-Source: ABdhPJwPeoXAhRJRr8m9vhmD28yJf8/Tz5RsSECscr+jLIhY1BNzlxOeXEN5F23BdYnMeniI0gcSMA==
X-Received: by 2002:a62:6545:: with SMTP id z66mr18609149pfb.87.1589851833108;
        Mon, 18 May 2020 18:30:33 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:4383:: with SMTP id q125ls3259388pga.7.gmail; Mon, 18
 May 2020 18:30:32 -0700 (PDT)
X-Received: by 2002:a63:64b:: with SMTP id 72mr17900337pgg.437.1589851832690;
        Mon, 18 May 2020 18:30:32 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1589851832; cv=none;
        d=google.com; s=arc-20160816;
        b=ug4zwwV5WoO5rRvGVA5E/VOmUuasNYvUiU1bNrUwrT52z27I5WAKDE3rD9eDtUxvG/
         K7Rnh989jN1/TbtiZzgTFDP/cC63WXs4JX3MxZhb3JaPLxomCPytYIwpeSO1OvPmjyLI
         m6od8rQn4XVgBkruMjmFeIF+QTH/43TwZfTYmwf3HSv0Uxe0yCdJ0UcJImgHnR3xjXRX
         CpH03jSgMyrPoQU1ScF0njWww2Z0lRRyvLEp6iR56+IlojC1tuCL949kAEh4k/V8Xh+2
         tk8ZKQCrU+5/Ptyq22YRdNnfbegRUoXZRz5INCndTF6Mbbut7BwxXmEfcYk4O4Xz8tw4
         sHqw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=dKVPJF/NEdnmBXWDMMPJJBCWq4APWNkeLoswoZMG3Ww=;
        b=XNyQQh9BVciQQ1kB5DAM+VLhbIPmctNsEvURhxJ0z37uMzYC17fNlpEwFODbsSmfJJ
         4Nn0pmWluIpqSl9DmMZ80kgOMxuXupOdQkJiFBdmBfnU48gRcw2CXiqbiLvZFIr0CGCn
         DkkAqBGa/hnUvl0NWEjH3GNt9GkjG+pNYjsXYIMc5xORxusNyJF4/KpPnAZuW5Yuhk9L
         dpWo7HDHoHvsusMrjV5Ffy58UzbmObLzqdGMZuiYFVzcjmORPy7+1PkxxevKsl3osFsF
         w1V1KVXH438IDgVJHuwFrwh1V9rhu9jE7RGaz6h3TsSvLorzeztPceKNv1pm0nb22Zhg
         i+qw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=I75n233f;
       spf=pass (google.com: domain of andrii.nakryiko@gmail.com designates 2607:f8b0:4864:20::f44 as permitted sender) smtp.mailfrom=andrii.nakryiko@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-qv1-xf44.google.com (mail-qv1-xf44.google.com. [2607:f8b0:4864:20::f44])
        by gmr-mx.google.com with ESMTPS id b8si136086pjk.2.2020.05.18.18.30.32
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 18 May 2020 18:30:32 -0700 (PDT)
Received-SPF: pass (google.com: domain of andrii.nakryiko@gmail.com designates 2607:f8b0:4864:20::f44 as permitted sender) client-ip=2607:f8b0:4864:20::f44;
Received: by mail-qv1-xf44.google.com with SMTP id g20so5741162qvb.9
        for <clang-built-linux@googlegroups.com>; Mon, 18 May 2020 18:30:32 -0700 (PDT)
X-Received: by 2002:ad4:55ea:: with SMTP id bu10mr19629870qvb.163.1589851831727;
 Mon, 18 May 2020 18:30:31 -0700 (PDT)
MIME-Version: 1.0
References: <CAG=TAF6mfrwxF1-xEJJ9dL675uMUa7RZrOa_eL2mJizZJ-U7iQ@mail.gmail.com>
 <CAEf4BzazvGOoJbm+zNMqTjhTPJAnVLVv9V=rXkdXZELJ4FPtiA@mail.gmail.com>
 <CAG=TAF6aqo-sT2YE30riqp7f47KyXH_uhNJ=M9L12QU6EEEfqQ@mail.gmail.com>
 <CAEf4BzaBfnDL=WpRP-7rYFhocOsCQyFuZaLvM0+k9sv2t_=rVw@mail.gmail.com> <45f9ef5d-18e3-c92f-e7a9-1c6d6405e478@fb.com>
In-Reply-To: <45f9ef5d-18e3-c92f-e7a9-1c6d6405e478@fb.com>
From: Andrii Nakryiko <andrii.nakryiko@gmail.com>
Date: Mon, 18 May 2020 18:30:20 -0700
Message-ID: <CAEf4Bza4++AxxU4ikMEfjeYLMiudWqc=Tk=5iTeBBNRjZjZZkQ@mail.gmail.com>
Subject: Re: UBSAN: array-index-out-of-bounds in kernel/bpf/arraymap.c:177
To: Yonghong Song <yhs@fb.com>
Cc: Qian Cai <cai@lca.pw>, Alexei Starovoitov <ast@kernel.org>, Daniel Borkmann <daniel@iogearbox.net>, 
	Martin KaFai Lau <kafai@fb.com>, Song Liu <songliubraving@fb.com>, Andrii Nakryiko <andriin@fb.com>, 
	John Fastabend <john.fastabend@gmail.com>, KP Singh <kpsingh@chromium.org>, 
	Linux Netdev List <netdev@vger.kernel.org>, bpf <bpf@vger.kernel.org>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Kees Cook <keescook@chromium.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: andrii.nakryiko@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=I75n233f;       spf=pass
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

On Mon, May 18, 2020 at 6:00 PM Yonghong Song <yhs@fb.com> wrote:
>
>
>
> On 5/18/20 5:25 PM, Andrii Nakryiko wrote:
> > On Mon, May 18, 2020 at 5:09 PM Qian Cai <cai@lca.pw> wrote:
> >>
> >> On Mon, May 18, 2020 at 7:55 PM Andrii Nakryiko
> >> <andrii.nakryiko@gmail.com> wrote:
> >>>
> >>> On Sun, May 17, 2020 at 7:45 PM Qian Cai <cai@lca.pw> wrote:
> >>>>
> >>>> With Clang 9.0.1,
> >>>>
> >>>> return array->value + array->elem_size * (index & array->index_mask);
> >>>>
> >>>> but array->value is,
> >>>>
> >>>> char value[0] __aligned(8);
> >>>
> >>> This, and ptrs and pptrs, should be flexible arrays. But they are in a
> >>> union, and unions don't support flexible arrays. Putting each of them
> >>> into anonymous struct field also doesn't work:
> >>>
> >>> /data/users/andriin/linux/include/linux/bpf.h:820:18: error: flexible
> >>> array member in a struct with no named members
> >>>     struct { void *ptrs[] __aligned(8); };
> >>>
> >>> So it probably has to stay this way. Is there a way to silence UBSAN
> >>> for this particular case?
> >>
> >> I am not aware of any way to disable a particular function in UBSAN
> >> except for the whole file in kernel/bpf/Makefile,
> >>
> >> UBSAN_SANITIZE_arraymap.o := n
> >>
> >> If there is no better way to do it, I'll send a patch for it.
> >
> >
> > That's probably going to be too drastic, we still would want to
> > validate the rest of arraymap.c code, probably. Not sure, maybe
> > someone else has better ideas.
>
> Maybe something like below?
>
>    struct bpf_array {
>          struct bpf_map map;
>          u32 elem_size;
>          u32 index_mask;
>          struct bpf_array_aux *aux;
>          union {
>                  char value;
>                  void *ptrs;
>                  void __percpu *pptrs;
>          } u[] __aligned(8);

That will require wider code changes, and would look quite unnatural:

array->u[whatever].pptrs

instead of current

array->pptrs[whatever]

>    };

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAEf4Bza4%2B%2BAxxU4ikMEfjeYLMiudWqc%3DTk%3D5iTeBBNRjZjZZkQ%40mail.gmail.com.
