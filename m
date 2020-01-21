Return-Path: <clang-built-linux+bncBCUY5FXDWACRBHU4TXYQKGQE4RP5LDI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ed1-x539.google.com (mail-ed1-x539.google.com [IPv6:2a00:1450:4864:20::539])
	by mail.lfdr.de (Postfix) with ESMTPS id B12061444E6
	for <lists+clang-built-linux@lfdr.de>; Tue, 21 Jan 2020 20:16:46 +0100 (CET)
Received: by mail-ed1-x539.google.com with SMTP id ay24sf2712186edb.0
        for <lists+clang-built-linux@lfdr.de>; Tue, 21 Jan 2020 11:16:46 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1579634206; cv=pass;
        d=google.com; s=arc-20160816;
        b=W9u5Ld/nhNxYjSfXGoFAB36zoYoj+qBWheWCvg/mWJTJ8/W0YZcMZ2ZAI0hlOLaFOa
         cG0IR5NGItvYM3UVIj7IT86K0Hvjw066Mv5YFx+6/u7YBRW0MxrejTHO2cGPkzTXy6oA
         Znx8026X+1oqo+UE/izV10tfZrjkeZK5c/w7TKs5XmjnvQjj1qdXOD3ecCaJRWxbunWu
         unw1g8C8ZDxSHwfSLNNIc7UHi/Q5fsl9FOgGp/X1JVBuvTMYzaseNMARQRytNVPitzHt
         /7jB/cVdVAhH4x0jdf7v5UNsafiD1znYxElC8mqbTg5AdZls/fk+cqs3oDC96Y2dYkzl
         L47g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=wzocX6CUZBGMidHfB5+ZvnDdHn7XlPPCaQUdA91TK48=;
        b=s1XavmDFsYDgchHWh1Ka2a0Qa4f8rpYDV2scWaWMtHsgf63sNcIhinxc5k/dI7Ao4h
         P/Rkev6rggM9fuZw8506dQbnArz/Zoma/NNxbY6iqguGtN7INJe+GXVbUJS5boeV2Vsa
         ccEsx/yuwn7lAwSMF8O9TqwHENlxh5veYBNlpBXgm2PNbOvLAdPU5CLve8DSJ4LGEwth
         S5YPTN/MPVVN3DJWdWn19oIZVSlnOYHi4uXkEIPcCuTrbDgeo01Sam+8zmqyolO9tLJU
         RDL7Xi4QkEx6rseuiKkzm8n/nDQye16dJX3qk6g8zXhhr5/ChddWhmt4+J7S3yIFTHJg
         esOw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Z1RfHvzA;
       spf=pass (google.com: domain of alexei.starovoitov@gmail.com designates 2a00:1450:4864:20::141 as permitted sender) smtp.mailfrom=alexei.starovoitov@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=wzocX6CUZBGMidHfB5+ZvnDdHn7XlPPCaQUdA91TK48=;
        b=ru3+R3Qjua4Czfoyp7GLZmWjUT2YKkHl1vCMpJMQ318RDrsIaIkmdS7+JZ9lhGEz+i
         qrRGWPij/MEvfmZDzLLVSsFGzzMbMmVdN45ZWgkg+yYYZVZPzjXCtViiy9gGC76bWkoJ
         lV3lLlKOAfP4rnKcOU5LuVuXyUI47RmnHIZNplUmkzCewUYoOoyaQuWAYQnbNbDue8EW
         mTRXnWi1ac/UY5429Ovned8GUTpVh7mwOPuZEHgCOcBY0UE5DS5mjoip8RgxesHUezDR
         /xYgm3WUEJwZHDt9cS7aZg8ehbLQLvw1W9PTgftbfKK4VC4LAVf9d9IaLC+GC6GihTY6
         QwQQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=wzocX6CUZBGMidHfB5+ZvnDdHn7XlPPCaQUdA91TK48=;
        b=sjdhO63ZQMqSB1aPfMWkf1j9SvQWo3btoubQyEvKVtoztrXToxsHvdExn3brbDYLg1
         U1cAHcCfOCJt1ULdSTg8DP+QODUq+q8rIl0h0q+AuouPHsex5ERxC5VJq5Q4eHX38pBz
         Nk4kwvtEqHY6LiquGXrgoDX2x6w4onIpUaYL4fTQUHzrddctTYlI0qLgKsIUV1bWklXB
         x7EUrYf+zZkNbAnQIJF/QA2bX3F/+L+aIuhGJDGk32fjMI1husbB4QSWwklClo15iosz
         WzpitwbgujzJgAQ+y1GadbZxQPnFex9CviQNQla8haRRhTMFOl9pOME5zRqifRRrlzPZ
         xvaQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=wzocX6CUZBGMidHfB5+ZvnDdHn7XlPPCaQUdA91TK48=;
        b=Fzvf2tJz/oUGfh6viHu35JAK4hYLPB3DR/7ENHqIcOh4zA/w0cZrEDWxRTGsiEeHZa
         qZhXcRsOS+WsMXyiAPiPte/SH5QxHBDjwlEbNtKUfYl9+NS6mLUohiqGtm3Y66TMdeeR
         hW7dsulv5lxMpion3BfY8xLuzb5bVw40pOMnNxaCXrkPUPHrZuLL8Ie/bWplV3UDbXZD
         AIhk8V2d8czA5vL/o9IHOmQiYg6Lxi/jxXkcWoNNJEcEk7XwTeIJ9dxG0vV17MOrE8h9
         y9fzBcJCN2XOl1ox40U6MaujIMW04+n2Vn8CG5VUla2743TjtwNqFr33jRwRGAIlspaQ
         unyA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAUpz73KWSlxWSt5+S3ZEjK2YLolvqJ4npN3pEoJNQjHZP71Gx7D
	apSzZ9/dWGref3tcB12Pt0Y=
X-Google-Smtp-Source: APXvYqxxgvzsPQFoCX6w1TEI6+e2TBaWAGG/E9xH7ZSXxnUFpGFW213B5z0Xl7JhJiIs4jpQH6qWcg==
X-Received: by 2002:a17:906:b88c:: with SMTP id hb12mr6012644ejb.150.1579634206456;
        Tue, 21 Jan 2020 11:16:46 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:907:118d:: with SMTP id uz13ls75546ejb.0.gmail; Tue, 21
 Jan 2020 11:16:45 -0800 (PST)
X-Received: by 2002:a17:906:d144:: with SMTP id br4mr5879543ejb.371.1579634205829;
        Tue, 21 Jan 2020 11:16:45 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1579634205; cv=none;
        d=google.com; s=arc-20160816;
        b=1IHU4zW8jfN6k3T68vTXMYP1JjuQWGEiiM1WOW7Wx0Qgdr4d/4TxNcm9eKFD9qD0f0
         SP9hio4UZs0yZ43Y8XUSNHbA3M35tHxsHdsKF32VSHDdrnqfR/Mm5D7lVDtfVL8varKj
         FpwchiHJXf6p3pcyBINQ1YtNGXP7aPRA2KerB7nalWKUQ8NTm2UsbfGtqg44unnl9grr
         IqeVvKkTGFh38W6scitd3ES+81JUEbQirUF+bAVm2gDvNv3ifttJ3piR3/3K7lJwo/dX
         5YeqSAQ5mzv73qzSjCHyeJ16UmzORs3KlL0gDDCJHGhd8lDPim0TtJ6BKADtf96WCEYj
         sIGw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=yH4ULRCvH4cIDF7hD9SOh0HJDCpz6O0XU2vMhvkwdOE=;
        b=YP35LSNukou4J9eZCA+mcs2Rj206zOxSmbWUaxdSXEfCBdYTZX/S8lnRBZqjyEDgmM
         HkI/d/nc/cjoo5CU66HI1T2XWAbBO714tl7eb+dJUd70ieshOJC/kfY6YOpSZTS/M6lW
         LKBOqqNdTfwiJWO4kR7aXcRFHTG+yOyiuOYSBVHc+6oKN3lnbTnuLMIwKxC7udbGc+LU
         RYMBWLxWs14z+jcvgtJQ3rHz7f6HGa99FH1s9Vk42YqGEpgPP/29TcFcjEWk/SfX0ftK
         sjHytHPCfPADbwUwiT6zaXhvwhy9aCaObxzKPjOqR7qijcH00pjpGlVcuHXQsyAQCVEI
         TFcA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Z1RfHvzA;
       spf=pass (google.com: domain of alexei.starovoitov@gmail.com designates 2a00:1450:4864:20::141 as permitted sender) smtp.mailfrom=alexei.starovoitov@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-lf1-x141.google.com (mail-lf1-x141.google.com. [2a00:1450:4864:20::141])
        by gmr-mx.google.com with ESMTPS id w19si1638208edr.1.2020.01.21.11.16.45
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 21 Jan 2020 11:16:45 -0800 (PST)
Received-SPF: pass (google.com: domain of alexei.starovoitov@gmail.com designates 2a00:1450:4864:20::141 as permitted sender) client-ip=2a00:1450:4864:20::141;
Received: by mail-lf1-x141.google.com with SMTP id y1so3246142lfb.6;
        Tue, 21 Jan 2020 11:16:45 -0800 (PST)
X-Received: by 2002:a05:6512:4c6:: with SMTP id w6mr3497249lfq.157.1579634205243;
 Tue, 21 Jan 2020 11:16:45 -0800 (PST)
MIME-Version: 1.0
References: <00000000000031a8d7059c27c540@google.com> <00000000000048111c059cab1695@google.com>
In-Reply-To: <00000000000048111c059cab1695@google.com>
From: Alexei Starovoitov <alexei.starovoitov@gmail.com>
Date: Tue, 21 Jan 2020 11:16:33 -0800
Message-ID: <CAADnVQ+jS2C=TxPvyKJmoj7HENCZVr3O_N1tHQ4uTewPDUu0_A@mail.gmail.com>
Subject: Re: general protection fault in free_verifier_state (3)
To: syzbot <syzbot+b296579ba5015704d9fa@syzkaller.appspotmail.com>
Cc: Andrii Nakryiko <andriin@fb.com>, Alexei Starovoitov <ast@kernel.org>, bpf <bpf@vger.kernel.org>, 
	Clang-Built-Linux ML <clang-built-linux@googlegroups.com>, Daniel Borkmann <daniel@iogearbox.net>, 
	"David S. Miller" <davem@davemloft.net>, Jesper Dangaard Brouer <hawk@kernel.org>, 
	Jakub Kicinski <jakub.kicinski@netronome.com>, John Fastabend <john.fastabend@gmail.com>, 
	Martin KaFai Lau <kafai@fb.com>, LKML <linux-kernel@vger.kernel.org>, 
	Network Development <netdev@vger.kernel.org>, Song Liu <songliubraving@fb.com>, 
	syzkaller-bugs <syzkaller-bugs@googlegroups.com>, Yonghong Song <yhs@fb.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: alexei.starovoitov@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=Z1RfHvzA;       spf=pass
 (google.com: domain of alexei.starovoitov@gmail.com designates
 2a00:1450:4864:20::141 as permitted sender) smtp.mailfrom=alexei.starovoitov@gmail.com;
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

On Tue, Jan 21, 2020 at 11:05 AM syzbot
<syzbot+b296579ba5015704d9fa@syzkaller.appspotmail.com> wrote:
>
> syzbot has found a reproducer for the following crash on:
>
> HEAD commit:    2e3a94aa bpf: Fix memory leaks in generic update/delete ba..
> git tree:       bpf-next
> console output: https://syzkaller.appspot.com/x/log.txt?x=15aefc6ee00000
> kernel config:  https://syzkaller.appspot.com/x/.config?x=a736c99e9fe5a676
> dashboard link: https://syzkaller.appspot.com/bug?extid=b296579ba5015704d9fa
> compiler:       gcc (GCC) 9.0.0 20181231 (experimental)
> syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=10a4280de00000
> C reproducer:   https://syzkaller.appspot.com/x/repro.c?x=1411544ee00000

Since it's in the verifier I'm guessing it's related to some of my
earlier patches.
I'll try to take a look soon.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAADnVQ%2BjS2C%3DTxPvyKJmoj7HENCZVr3O_N1tHQ4uTewPDUu0_A%40mail.gmail.com.
