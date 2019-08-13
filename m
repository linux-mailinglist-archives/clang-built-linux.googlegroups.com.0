Return-Path: <clang-built-linux+bncBDRZHGH43YJRBIWVZLVAKGQEFXY57QY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x23c.google.com (mail-lj1-x23c.google.com [IPv6:2a00:1450:4864:20::23c])
	by mail.lfdr.de (Postfix) with ESMTPS id DA6C78B834
	for <lists+clang-built-linux@lfdr.de>; Tue, 13 Aug 2019 14:18:42 +0200 (CEST)
Received: by mail-lj1-x23c.google.com with SMTP id t2sf21080011ljj.13
        for <lists+clang-built-linux@lfdr.de>; Tue, 13 Aug 2019 05:18:42 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1565698722; cv=pass;
        d=google.com; s=arc-20160816;
        b=TrTw3W/hv9dziKVF/oC7kK8Woo8PcCQ8rKHbXcEZWxNQk2YOj58yz02U1q2XmQt1za
         BOda26Sw6e2aZfZS9zNjxKT485ZfFb1iCIPbZylZFdvj6kagjWjijoGQ/c2/UyPiftnP
         qwD5ss32/gNI7a+iKnyBJrzNZOt0WBYNKlPveNBN+CB0e72PcZWnRtQL8yACpYQXySXn
         fRighPpWkAZusFn9+8vVMrCqKKEYaIDJm+vQreo9LhGAkNkXge7nTsSs58QvVeMuPbMn
         dxzHnME4YnhUEkdJcAHNUW15ENorwlPwoQhn+NXXX/VEa1jzQHAjt4h0KEN34rqZ4egT
         L2fw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=qGvCl1r720Tygga9z317p+xE1GIgl+JeGK4obNdz5Xg=;
        b=vdHwoZKfVvEh2lkSiKjwIT2DVkiD2QQrN176pIIkRfxvA/3Li5emjNV3wwgJsBPkRD
         cptRerE40lHc0y9+4gk7MOPUQJUdrFsAc/n2iMvY2VJOcrAg5cDw41hTY4VA64jHvvsR
         Sdnj0aAGM+jw2IG0bNEyzz/oaT1e27DbmxbOc/kzGqkfIxPdH2Iow/ltAdvAf1Vt18mD
         +2KppdpanJ1aSrvUIVE0rSpauIIKeDlRPFPw2GBJPFcSErcr4dxWvwsrYFT+UU/N+1/W
         p4yOZwCjp+BfzXObBD5PX0Xw4eNLnp2zws+VJjZUZNXLFQ54KCwUMG7ynKXFwGHwyfID
         iQAw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=eDk+RTLY;
       spf=pass (google.com: domain of miguel.ojeda.sandonis@gmail.com designates 2a00:1450:4864:20::241 as permitted sender) smtp.mailfrom=miguel.ojeda.sandonis@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=qGvCl1r720Tygga9z317p+xE1GIgl+JeGK4obNdz5Xg=;
        b=eUgOPndkLn5oxzua7/Ki9v0SlZ6CptpiJ93ngv4y6ZYkc9BsYh9/L4c0ScT4MRx8VX
         mqF3zy8fx4GN+ATWrg31/xn+96obdbwWbIJ+fCTsA1oSANLQjGDQ8+km5wRIIRztTfJI
         C1IFtIXuqagSVKENBPUDpI/xPklcMlGhUiyaigpLJIw71j7DyQKdSLgBXLWS5zovFwmh
         YHmR73mAiV35NN8p6YhO5OTOg8pnb2SDD+5tQkWjCaf5Cd1Fewt2RnGNREsEazGeGMKX
         4fPGbyPXRpTyClwaWWJxn50FPotYWnTFFqKftRRKILtoHpb2R7VgTcREabiPVtPO4LlK
         24zQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=qGvCl1r720Tygga9z317p+xE1GIgl+JeGK4obNdz5Xg=;
        b=Kjsat/BR8eCL3VG/GYeHGJFIfBQV3tMOq6ic8V1KXdJZrHfAYIspuSfxSvhd1vaWN3
         kvX5MYHse9rzItB1lwMkv65OyI1fyr5fYPG4IfFY/VtKa9N4Y5SC4it8J1rTQp8zY7Ab
         Mj4CT6Gd44xs6ZYM8GDOVNTuh61hmMfisdtOxAnYYYyUgmpcvEWEfkypn/6vA+FtKJf5
         Z7KLe+iR033ncWCkPpwZDHMfVpvK/G6XlWXNGMwluDviFmvWWRK7CvakyufLE6vNAPqq
         x8HHfNky+45V7zk3ozbxW3g/s1fspbRBs4wxrOYxSg2cxRfQPQ65mUB7GwOHd9u7wXqf
         hj+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=qGvCl1r720Tygga9z317p+xE1GIgl+JeGK4obNdz5Xg=;
        b=bMqAilhNpujiMJfRifgEODQWZfCzvmocU0pMtlIuKcqyBUjhOm2F3Qf53SQA7XjRAX
         67lU87ejpiuHeY3vM3G8YOVufZANY2UGDGbeOjrwYlGpk/Lignc9Eh6qWbpAi2i8rdop
         Ql5JbNpbJ5yePaU4GCYO9W3EkA6frwIYtULBWk3UtWaV9o5TN4qnQIAmEHstHsbqO0Ad
         dtWpc71rEw70jYasP/I2sBHD9wL03yFaOGcfmTH7pOWLyWfhdaDwINhcSQra/kHZ2ENQ
         Wj2iKn5jywnXa86940wk88p8Mx8OuxDLXiUtbah16wSm0xR5uzupDLU2+1oMBx/qxn6p
         NtAw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXnvxXEtsRG6n5pZjLTAkzNBP1dosWpQiqi+LsqysA1UkqWFpno
	1vvb1Y+ZQkmcajIex42PtOM=
X-Google-Smtp-Source: APXvYqwO1nrcqOJSp31AsB+d5+5Y7cDIZ4dFhDKhEjCewUbIo2mDPqozg93/CUal/j79IsPYj+peWQ==
X-Received: by 2002:a2e:8e87:: with SMTP id z7mr4220782ljk.211.1565698722514;
        Tue, 13 Aug 2019 05:18:42 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:91d9:: with SMTP id u25ls600611ljg.15.gmail; Tue, 13 Aug
 2019 05:18:41 -0700 (PDT)
X-Received: by 2002:a2e:534e:: with SMTP id t14mr2247208ljd.218.1565698721859;
        Tue, 13 Aug 2019 05:18:41 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1565698721; cv=none;
        d=google.com; s=arc-20160816;
        b=slcJAUcutPtXHmxHQkIaVvwEot+sLNmJIUetYaT+wi0ceHGRbkjgu/ycboZknN+1hK
         9ane4ZZGID2SCXqfPmqxlqOQ1Faz/4kQ3QnWcYKNBkhn+c23zvxLh7nmP0y//LO6nPc7
         xL9DOARQ7cHz65yXuYje9r1Ev/S8hDRS/Yab4JAREMXpdsyqYFYs2f1TfcIwxpdjRWiN
         VvSpUoG7s2PxqLZKnw9NXUiuo+m8gCv7R0lNh/vtldqrgIyVDlNKMKWxRIljZyU8itcZ
         EKBqlCvhGrXkazouX1eTeNWMQKlS6eTdnIdb0YWHpUBiue0+bnwSZAf3XVSuzI/hvlZT
         KIgA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=EwRADUNHlV0hzZS2IA/cFhoIZjTzHWLRtc/+sGAjaKM=;
        b=PnWCnrWlwzFEMpd14JIWUdd8qUmWGL6MixEYSwjW8HFmdavS4duJYF1pfpmmWAXSx3
         LAPHtBAjn4y+Kfr6jOliVrcSGVyLgwNJFcxC5TmBJsc1CRjHJdfsO/v9bt3kcuSNAAXU
         f75Nl/RHTDHhcFY5ZUzYNIBQCh0W79zFTEuHbx7sQA/z1AMyh0v4nhKAQjADjiI0jbsf
         fVfxe5K1JPjnrt0ScNup4gekNoHQnNfzY0sDme20ojpdQkyvBCFQgpzoG6FteX3c4S2z
         hTxgBQHTwT60C/xmEScdPztmm7gzLBFStTPNgMME95AxZ2XmC1oid6fmppeWIYDgpkrV
         HGbw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=eDk+RTLY;
       spf=pass (google.com: domain of miguel.ojeda.sandonis@gmail.com designates 2a00:1450:4864:20::241 as permitted sender) smtp.mailfrom=miguel.ojeda.sandonis@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-lj1-x241.google.com (mail-lj1-x241.google.com. [2a00:1450:4864:20::241])
        by gmr-mx.google.com with ESMTPS id q7si2560571lji.5.2019.08.13.05.18.41
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
        Tue, 13 Aug 2019 05:18:41 -0700 (PDT)
Received-SPF: pass (google.com: domain of miguel.ojeda.sandonis@gmail.com designates 2a00:1450:4864:20::241 as permitted sender) client-ip=2a00:1450:4864:20::241;
Received: by mail-lj1-x241.google.com with SMTP id z17so12896486ljz.0
        for <clang-built-linux@googlegroups.com>; Tue, 13 Aug 2019 05:18:41 -0700 (PDT)
X-Received: by 2002:a05:651c:ca:: with SMTP id 10mr5387061ljr.144.1565698721734;
 Tue, 13 Aug 2019 05:18:41 -0700 (PDT)
MIME-Version: 1.0
References: <20190812215052.71840-1-ndesaulniers@google.com> <20190812215052.71840-17-ndesaulniers@google.com>
In-Reply-To: <20190812215052.71840-17-ndesaulniers@google.com>
From: Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>
Date: Tue, 13 Aug 2019 14:18:30 +0200
Message-ID: <CANiq72kbFDPO0V12AQkvNJn4eX3j2TH4RiNwuB=a520aSmvfKQ@mail.gmail.com>
Subject: Re: [PATCH 00/16] treewide: prefer __section from compiler_attributes.h
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Andrew Morton <akpm@linux-foundation.org>, Sedat Dilek <sedat.dilek@gmail.com>, 
	Josh Poimboeuf <jpoimboe@redhat.com>, yhs@fb.com, clang-built-linux@googlegroups.com, 
	Alexei Starovoitov <ast@kernel.org>, Daniel Borkmann <daniel@iogearbox.net>, Martin KaFai Lau <kafai@fb.com>, 
	Song Liu <songliubraving@fb.com>, Network Development <netdev@vger.kernel.org>, bpf@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: miguel.ojeda.sandonis@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=eDk+RTLY;       spf=pass
 (google.com: domain of miguel.ojeda.sandonis@gmail.com designates
 2a00:1450:4864:20::241 as permitted sender) smtp.mailfrom=miguel.ojeda.sandonis@gmail.com;
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

On Mon, Aug 12, 2019 at 11:53 PM Nick Desaulniers
<ndesaulniers@google.com> wrote:
>
> GCC unescapes escaped string section names while Clang does not. Because
> __section uses the `#` stringification operator for the section name, it
> doesn't need to be escaped.

Thanks a lot Nick, this takes a weight off my mind. One __attribute__
less to go.

I guess I can take the series myself, since the changes are not that
big to other parts of the kernel as long as I get Acks; and anyway I
plan to do other attributes over time.

Cheers,
Miguel

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CANiq72kbFDPO0V12AQkvNJn4eX3j2TH4RiNwuB%3Da520aSmvfKQ%40mail.gmail.com.
