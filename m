Return-Path: <clang-built-linux+bncBCUY5FXDWACRB4VCRGDAMGQE2WC3K4A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x33a.google.com (mail-wm1-x33a.google.com [IPv6:2a00:1450:4864:20::33a])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D3633A3280
	for <lists+clang-built-linux@lfdr.de>; Thu, 10 Jun 2021 19:52:50 +0200 (CEST)
Received: by mail-wm1-x33a.google.com with SMTP id m33-20020a05600c3b21b02901a44b1d2d87sf3352121wms.3
        for <lists+clang-built-linux@lfdr.de>; Thu, 10 Jun 2021 10:52:50 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1623347570; cv=pass;
        d=google.com; s=arc-20160816;
        b=uespICDkCMhe+PjoYj1WA/b5JnbsPdRj4jquxuc+DoqgDu/zHPM45aGWZrynBsuAfj
         JCBqM4OQ/vNZtQmHJEgJiKl+X0Mg+pV2Wiw1HWhQBnfWGudEMjS9+QHFe/iSYBLZGi1z
         5QhFU+FdZZ8YC7YuWZVmnFtLh2IB0dEkr0ZimmUb1RXDAztEPtB13Nuat15wzBo01JAm
         AvPkbnsb20S+V5RtX3gyr+9I4U6wqP3AE8KdLAVovQhhQd09cglwSaxHiUEF8ZwjxL6E
         6ohrXhDFQRRRR/wszexEC7dUaYnHWmHA2ZuVCXMIqd5DOcCHEWnlSsEh6xB9kr/WjzAt
         cbzg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=fXI1aZFCGBg39S0Tmr82HCak2mt2Uj6mzhyG/Okg7+8=;
        b=hzJlIcIo25S5kXTvtBBYfzylBWwMQVgtoeVT8qT/i3X/35KXNEB7O5zG508A5HgOl+
         M7gSzFBuP6xucucLtWBTFprRSBOOXmPMyILQPj3R9P5QOus31MDD3SjDIPefUUKzhZU1
         /eEFEvb4l8F1jUq5nA3u3nA4KuiePfTqO4kO7SzCdvCPmDvi+76zDUdmzS1L1CTKxkLb
         8xbPBlH5jmpRI1nFblj4cFpobgZfGnq+WbDlWsji2QgWj3BOhiQaaYnpoq2MfFioXuMZ
         QitdXQ6CimkEg/pSaKq0qOVmLxDD3N1707zv7KKCnnQd+wm2xwhYSIGa+a2xobBFX6JC
         yBOQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=j9utiUZQ;
       spf=pass (google.com: domain of alexei.starovoitov@gmail.com designates 2a00:1450:4864:20::22d as permitted sender) smtp.mailfrom=alexei.starovoitov@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=fXI1aZFCGBg39S0Tmr82HCak2mt2Uj6mzhyG/Okg7+8=;
        b=g4rLdWuhdqL+scX04SVZdaLNbGlsJwb65jRuVC5E1lBAqUQt5nOhKv41YwCwZpCTX8
         vnDG44r+8w4mHdrYX6Xdd3gnn8PWweLY+Y66u/9PqbZyKWsWTnAy0ds/8WaDBW0jOxEf
         x64T9YSv3S39hhJvJdE6i6MNei68SG+HucUBBLQUdE+HYsVpRuFzz1AxnTYJfVurM5EM
         MxgpomHvRvawcjzDdGW2Vf9sQCw2rc8cL3WF6NWVXH44aFiUpxD/Qm740uKIhdVLsfT7
         80PmXPtn4k6bCB7v0U7ST8bYZnoJUlEk5ziAH/hsxmyZ/1jOtzN9ofXjGJgDiOavAUyI
         qzKQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=fXI1aZFCGBg39S0Tmr82HCak2mt2Uj6mzhyG/Okg7+8=;
        b=DD7/JU536skpBn5LyBm/6Foz4tIu/287Y/WVvqv0em0f02qKR92Ngz0dphUvoTRB+a
         QLqXrZGS/+63p7cWqENmcP8PGIT5jpbaKezcbVpdU47YqnIsPldhssHR459eKtLvffMp
         tV54RVl3qCVjvWHn58Ryu+2B7Nduuw9ohZYKYRSj9fgbplYqO0tLPsp5MGTl9+5ydnhH
         TtTDaPTA2/zrjCJfmYNiiGl1oyx/tNEeSA3hLSOP7mzdhvSX0J3J6SJcdl9VCu1UM9B/
         orYqhSkelpneEHGS5EmM4/cESaR0v1iNosis/9fScRUZd6wwF3v3K392lIlKhNAcbLO8
         FfKg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=fXI1aZFCGBg39S0Tmr82HCak2mt2Uj6mzhyG/Okg7+8=;
        b=tr7Nj7g2R9w3bSalnQkTsjY+qwyrQ6A2Q8DVaRMiEWo4tNrOm1nURREnHeKDSxU2K0
         E6wsS+H+qRD5vK0W7AWGpWGHf6Ihyhr0dA2TaANXDSPaEuSrdMl+2TymBhb2JCCCKMRz
         87gbUl8E8bouUcfh+4dq3B33oNcwEMS7Sy06/lob2AWubzt0p1VMQtB28XfFW6KWLV35
         yZo3TNIObaFfkMMsUA+n+dZPtPjbQnjFqXGtnSc9Lz1LkLy35QCTVcZuAjxlPahupWlF
         Fv+VfAaeRbEVid0SauGzpIfLLmVfQaxk2hSmLwMG2rEZ+WyX5ekUoDAHnVMuX6b26kVw
         sgJA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532fGDxbnu7KdOj3KdmFTZhlcXXvGUeXllLGYhgz8ymkHr5wAj9r
	TPOXlZoedUAc/k7e029KC4w=
X-Google-Smtp-Source: ABdhPJzVcGy7jbFuYMWttXjI9hmayCRsym26GOS3SDpTZ5f1vp+SHaP6HOlJ84SWpVACVmCxQAEGWA==
X-Received: by 2002:a7b:c099:: with SMTP id r25mr85396wmh.48.1623347570315;
        Thu, 10 Jun 2021 10:52:50 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:adf:fe4c:: with SMTP id m12ls2232018wrs.0.gmail; Thu, 10 Jun
 2021 10:52:49 -0700 (PDT)
X-Received: by 2002:adf:fc90:: with SMTP id g16mr6760551wrr.183.1623347569430;
        Thu, 10 Jun 2021 10:52:49 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1623347569; cv=none;
        d=google.com; s=arc-20160816;
        b=bsrQa2mQQPGLT8gArOUR25xaR3R6beskVyQZDsZIn50xuUSgToeXTOUOqckhmzh5Up
         Oc8VyD5415S7PApRJ4VSeDSZJqL44ARKJCVes2N3Upy31GI8jXyYXJK9BPsc5U1Y17wz
         hbqihgi5zbe8c2U3nXpJgbKKM/0tiVNqY9ClZcgSyje4/LR99MgaUeoXdtuLYZ4NLZbS
         rrd8tWDf6RtTSEI7dnSxEikknT0fjkPvhktqrjyTDRzL1mb4J+FuqysvQfarhmAT1HG/
         7yrbl5FMkZsvERQbcHt0GxwaB7o0fKDdzlqPPa9HFVpF4b9RdO/JAuHkiZ+EzblufWcQ
         I2Ow==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=on0Tnjo9EX+wZkS0PcGQkLK+8ozdHMxgRM2ZPf0mD60=;
        b=B/79xHHpun/6NpC6+2daRmUQuqTrOMdscr5uhYPXU3qqgyGvoWd+WezZBmYK+TdwYo
         m2k6kMdOX45+kAkk05482x3DFu3GS3GVlJvY2YPeZ71rDIvEU6a0uU7BERyTuNHhYiNu
         8f3SCRqOfeBckbxMZTi3I0r6ILIqJd3ibrlj28HS/vUaP21RISRlqMCTR6eRkZbAvn4S
         Z/dRlEIA1IBGY3WT03qd3mZphSYrZ+zySvGkYtkJZIg/t42pJ1G41IUQLWRYCxVpSWL8
         H9r3fVODaFRGEYSnnxDKkUAZSsm6kHrDRlhnsAmcgOtQhDnECRCThVyEu21ercEysXuj
         hRHw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=j9utiUZQ;
       spf=pass (google.com: domain of alexei.starovoitov@gmail.com designates 2a00:1450:4864:20::22d as permitted sender) smtp.mailfrom=alexei.starovoitov@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-lj1-x22d.google.com (mail-lj1-x22d.google.com. [2a00:1450:4864:20::22d])
        by gmr-mx.google.com with ESMTPS id t1si132162wrn.4.2021.06.10.10.52.49
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 10 Jun 2021 10:52:49 -0700 (PDT)
Received-SPF: pass (google.com: domain of alexei.starovoitov@gmail.com designates 2a00:1450:4864:20::22d as permitted sender) client-ip=2a00:1450:4864:20::22d;
Received: by mail-lj1-x22d.google.com with SMTP id bn21so6124414ljb.1;
        Thu, 10 Jun 2021 10:52:49 -0700 (PDT)
X-Received: by 2002:a2e:b5c8:: with SMTP id g8mr3170497ljn.204.1623347568936;
 Thu, 10 Jun 2021 10:52:48 -0700 (PDT)
MIME-Version: 1.0
References: <20210602212726.7-1-fuzzybritches0@gmail.com> <YLhd8BL3HGItbXmx@kroah.com>
 <87609-531187-curtm@phaethon> <6a392b66-6f26-4532-d25f-6b09770ce366@fb.com>
 <CAADnVQKexxZQw0yK_7rmFOdaYabaFpi2EmF6RGs5bXvFHtUQaA@mail.gmail.com>
 <CACT4Y+b=si6NCx=nRHKm_pziXnVMmLo-eSuRajsxmx5+Hy_ycg@mail.gmail.com>
 <202106091119.84A88B6FE7@keescook> <752cb1ad-a0b1-92b7-4c49-bbb42fdecdbe@fb.com>
 <CACT4Y+a592rxFmNgJgk2zwqBE8EqW1ey9SjF_-U3z6gt3Yc=oA@mail.gmail.com>
 <1aaa2408-94b9-a1e6-beff-7523b66fe73d@fb.com> <202106101002.DF8C7EF@keescook>
In-Reply-To: <202106101002.DF8C7EF@keescook>
From: Alexei Starovoitov <alexei.starovoitov@gmail.com>
Date: Thu, 10 Jun 2021 10:52:37 -0700
Message-ID: <CAADnVQKMwKYgthoQV4RmGpZm9Hm-=wH3DoaNqs=UZRmJKefwGw@mail.gmail.com>
Subject: Re: [PATCH v4] bpf: core: fix shift-out-of-bounds in ___bpf_prog_run
To: Kees Cook <keescook@chromium.org>
Cc: Yonghong Song <yhs@fb.com>, Dmitry Vyukov <dvyukov@google.com>, 
	Kurt Manucredo <fuzzybritches0@gmail.com>, 
	syzbot+bed360704c521841c85d@syzkaller.appspotmail.com, 
	Andrii Nakryiko <andrii@kernel.org>, Alexei Starovoitov <ast@kernel.org>, bpf <bpf@vger.kernel.org>, 
	Daniel Borkmann <daniel@iogearbox.net>, "David S. Miller" <davem@davemloft.net>, 
	Jesper Dangaard Brouer <hawk@kernel.org>, John Fastabend <john.fastabend@gmail.com>, 
	Martin KaFai Lau <kafai@fb.com>, KP Singh <kpsingh@kernel.org>, Jakub Kicinski <kuba@kernel.org>, 
	LKML <linux-kernel@vger.kernel.org>, Network Development <netdev@vger.kernel.org>, 
	Song Liu <songliubraving@fb.com>, syzkaller-bugs <syzkaller-bugs@googlegroups.com>, 
	nathan@kernel.org, Nick Desaulniers <ndesaulniers@google.com>, 
	Clang-Built-Linux ML <clang-built-linux@googlegroups.com>, 
	linux-kernel-mentees@lists.linuxfoundation.org, 
	Shuah Khan <skhan@linuxfoundation.org>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
	Kernel Hardening <kernel-hardening@lists.openwall.com>, 
	kasan-dev <kasan-dev@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: alexei.starovoitov@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=j9utiUZQ;       spf=pass
 (google.com: domain of alexei.starovoitov@gmail.com designates
 2a00:1450:4864:20::22d as permitted sender) smtp.mailfrom=alexei.starovoitov@gmail.com;
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

On Thu, Jun 10, 2021 at 10:06 AM Kees Cook <keescook@chromium.org> wrote:
>
> > > I guess the main question: what should happen if a bpf program writer
> > > does _not_ use compiler nor check_shl_overflow()?
>
> I think the BPF runtime needs to make such actions defined, instead of
> doing a blind shift. It needs to check the size of the shift explicitly
> when handling the shift instruction.

Such ideas were brought up in the past and rejected.
We're not going to sacrifice performance to make behavior a bit more
'defined'. CPUs are doing it deterministically. It's the C standard
that needs fixing.

> Sure, but the point of UBSAN is to find and alert about undefined
> behavior, so we still need to fix this.

No. The undefined behavior of C standard doesn't need "fixing" most of the time.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAADnVQKMwKYgthoQV4RmGpZm9Hm-%3DwH3DoaNqs%3DUZRmJKefwGw%40mail.gmail.com.
