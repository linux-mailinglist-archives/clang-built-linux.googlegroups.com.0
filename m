Return-Path: <clang-built-linux+bncBDEKVJM7XAHRBDFSTPVQKGQEDHPZ3NY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yw1-xc3f.google.com (mail-yw1-xc3f.google.com [IPv6:2607:f8b0:4864:20::c3f])
	by mail.lfdr.de (Postfix) with ESMTPS id D596DA0A9E
	for <lists+clang-built-linux@lfdr.de>; Wed, 28 Aug 2019 21:42:05 +0200 (CEST)
Received: by mail-yw1-xc3f.google.com with SMTP id x20sf624094ywg.23
        for <lists+clang-built-linux@lfdr.de>; Wed, 28 Aug 2019 12:42:05 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1567021325; cv=pass;
        d=google.com; s=arc-20160816;
        b=IAvzRAPteip8BJufb3omsZE+Jj4LHtwvfQPKjwyT4Kdwlte82deb5+b3aQaiL1sn+O
         rDSdsmgnCwFzJjRskN/V7OHq0DbYuheVzHx3COIYD0UoBs24OFoKgKomUub6dHfKywJ2
         K28kc6KSmDzv+LxjlYHgNFd7WKiCFn11DQqh1lbORWauGKS1yVeGRrgQavAIAud+ufJg
         NKKaLDg7fGH8E9u4bjjguY3Oy6R3gJ18u2ynXUYxbd3POJ1ihqd4ZGyT2A9WdpvhWG3a
         pdB/pG7kyt2crM1VOPbepe941ha+2uyJDAshEYfZVUIAtccqBJS1DVBbzgAoaMF7518A
         Xwvw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=ZCfiUFt4aNrTZ8FavG+U7NGJ1YwN+IpKDHF49oW+4ds=;
        b=AuEiY/TmSkx7Th74IXaU/KziuAs+mwFm0N0QaVWF2KnaXteldIvqRzWc9B19s9LJhg
         x/GN8xZApLHluKyc8i2u96ONyjBnRk0OV4C82smA1IEwNBucQ5L8BE+RYwhplzmOAsze
         gRNPOfSd8AqDZzS4h+MrLBbHF4qwYxgKGCfBagmCwTuTasCRQqn3kP8HdodgvHdouAsL
         M1OKfLwk0cxjJB2LKl9CgMiqHQR5hnAGvXzk9XLeBLUSn5+pCxx3/yLwunH96+pXWaqI
         EemC48OkY0KhqncybHbOWNGKlSk9LwCwQBwkN4GdO7yK6EzkDO2xbWnc8qNw+sep2rJe
         p7EQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of arndbergmann@gmail.com designates 209.85.222.195 as permitted sender) smtp.mailfrom=arndbergmann@gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ZCfiUFt4aNrTZ8FavG+U7NGJ1YwN+IpKDHF49oW+4ds=;
        b=IPT+lnz3WxXnOqdTZ8ZXouwWNnvAwkKkQssTwpMr7i8PsO8Lw85XhN2CnJXDmfzqBY
         k950E7dcJgEi21Zse5R14bWgR2RjxkNec03m6xo5LyWkFkr28yajPvlhQZW8wBjQD9C9
         uIKAZogb4Zu7Ry/AO1pxzFL3AAaPMSzKCT7BP8X0opOtRdOkTwPm40AY+qEgiB00DDf7
         1NLTZh0PbBIg06vQKA3fcmz8j2X4X3WZrzxeWsXBEswanmxbJNR6AebmPIKnBN4czAsf
         IKNZB1HhM9puJMKx5LV7HRwKF37Vyd/oFEaVJOMhqX0OKjmrbTyLtGNu9SfMPcIN4mvC
         6iXg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ZCfiUFt4aNrTZ8FavG+U7NGJ1YwN+IpKDHF49oW+4ds=;
        b=mwbXAQ4X8TYmBGdpifTEMXadx0DpOvAyyA7JJBoEQJEYF1PFPI2HKvjt06rJzRvrEp
         L6dOlhw4gUv0yTv2gPRLoGV5tFTazH67TkEfTTzG3NE/qUIUUHFN23mDPksPC3q8vYHT
         Jtk0iliW4Ge9GAY+3lk8RwUVWUDVwPgeHjVhgxGANsD3wOB/HixMAVZdYGoJpgGliO36
         aWKfuxP/7973EwwA/bGys6emkm1byylKykpjMHXfaq6fTScAwyhFriLGrRi7UJVhY3Ph
         Z9yKig0ur/NSHEeoD1ZgbxM2YGNCeG/n9famS7r5u/vMhMfCcVUp1RYFmjZxaeFBmFE7
         13tw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVcxRrykOK39hR3feltYDkTMUDddXdBK+TcrBk8gJPko6VvCkbB
	G9q/WD8uwwKa4Y9i1q2VcKs=
X-Google-Smtp-Source: APXvYqwJw1+UCVb3+p2h9HnPQlM2C1Ur4kaizOQ4TnUSZaGlhAJ4IjWEUqElScDhvIMux9NpYdxJhQ==
X-Received: by 2002:a81:2e09:: with SMTP id u9mr4280012ywu.146.1567021324874;
        Wed, 28 Aug 2019 12:42:04 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:ae98:: with SMTP id b24ls15543ybj.12.gmail; Wed, 28 Aug
 2019 12:42:04 -0700 (PDT)
X-Received: by 2002:a25:be4b:: with SMTP id d11mr4348554ybm.206.1567021324480;
        Wed, 28 Aug 2019 12:42:04 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1567021324; cv=none;
        d=google.com; s=arc-20160816;
        b=geBUl0JoWWLU9/dmtMEu3B1ynDZMqwTs1D55SgcTZdBlkU84FkGnmsuwjpnLDHw66B
         i1GIDhxwLAOCOlv/uoWcAoKdxpZyUDRWE0b7rW5ECCRnWiCaoaTpSGvCBzVIJfEnygHa
         0Xob5sVGEL/Ml7Ma7Z4CDd7XuCt5d/in8bg+Lf7tMn6Lrslt8EJko+gC2htfHS5npAeI
         +eUo0u+1EnO8n2keX+IsZEMP4nMz+ty49M1NNqVAAp/OCNVfYVb8pDOwVlv2LnnxlObt
         3dbG/Oxs6TU1ugmHu5C3c1/yLsDrwhb+xdvVG5u0zVAcTt7+JlyaR9y3P6VarueER4h4
         Quow==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version;
        bh=GW0tqEqMsiVVgwwzpWylrg4uBDcBgz1jfCvWma45dGA=;
        b=n392ZuJ24xCSgcaHivqdcnuoYtOF2WI0Xixe4p26wijxOB67AOsWfAHmbOcNCl21H4
         uRWKHhSB4Inm6gJ0bGnAIfUGLcDSq4YnhKEFq8Jx+PNOH27O5rgW4VBGtiTIdY/2nLYD
         ex/eiEGg8gYxUmV3/2ZkXA1BoUKrcuu4mN1LcQVRwffFSHzNVXhNr/Er25LlConDLv5W
         b2yyMEpNnfwzCoRTOaO248H+GJPeTW1pnY9B+qx8k05vTacqZR6LtPNFHmMNnD6an2if
         VYOiQHQkbRHC4bGSzBMIm4VAzoB2BrqdPvpxKrukd9byrHChCWeC5Z1ax3txumvQMvJq
         OqZA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of arndbergmann@gmail.com designates 209.85.222.195 as permitted sender) smtp.mailfrom=arndbergmann@gmail.com
Received: from mail-qk1-f195.google.com (mail-qk1-f195.google.com. [209.85.222.195])
        by gmr-mx.google.com with ESMTPS id j72si23317ybg.0.2019.08.28.12.42.04
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 28 Aug 2019 12:42:04 -0700 (PDT)
Received-SPF: pass (google.com: domain of arndbergmann@gmail.com designates 209.85.222.195 as permitted sender) client-ip=209.85.222.195;
Received: by mail-qk1-f195.google.com with SMTP id g17so824751qkk.8
        for <clang-built-linux@googlegroups.com>; Wed, 28 Aug 2019 12:42:04 -0700 (PDT)
X-Received: by 2002:a37:bd44:: with SMTP id n65mr5815134qkf.286.1567021323862;
 Wed, 28 Aug 2019 12:42:03 -0700 (PDT)
MIME-Version: 1.0
References: <CAK8P3a3G=GCpLtNztuoLR4BuugAB=zpa_Jrz5BSft6Yj-nok1g@mail.gmail.com>
 <20190827145102.p7lmkpytf3mngxbj@treble> <CAHFW8PRsmmCR6TWoXpQ9gyTA7azX9YOerPErCMggcQX-=fAqng@mail.gmail.com>
 <CAK8P3a2TeaMc_tWzzjuqO-eQjZwJdpbR1yH8yzSQbbVKdWCwSg@mail.gmail.com>
 <20190827192255.wbyn732llzckmqmq@treble> <CAK8P3a2DWh54eroBLXo+sPgJc95aAMRWdLB2n-pANss1RbLiBw@mail.gmail.com>
 <CAKwvOdnD1mEd-G9sWBtnzfe9oGTeZYws6zNJA7opS69DN08jPg@mail.gmail.com>
 <CAK8P3a0nJL+3hxR0U9kT_9Y4E86tofkOnVzNTEvAkhOFxOEA3Q@mail.gmail.com>
 <20190828145102.o7h3la3ofb2b4aie@treble> <CAK8P3a1gkA4cqbKbLLCAukiX-0tA9fV_FTG6PLTfv+DSHp44GQ@mail.gmail.com>
 <20190828175713.s7jub3sf6l7vyfoj@treble>
In-Reply-To: <20190828175713.s7jub3sf6l7vyfoj@treble>
From: Arnd Bergmann <arnd@arndb.de>
Date: Wed, 28 Aug 2019 21:41:47 +0200
Message-ID: <CAK8P3a0C6jvBqsO2KXOV-j3eQ07zvCjUWqaYdTKDfne72EWUDA@mail.gmail.com>
Subject: Re: objtool warning "uses BP as a scratch register" with clang-9
To: Josh Poimboeuf <jpoimboe@redhat.com>
Cc: Nick Desaulniers <ndesaulniers@google.com>, Ilie Halip <ilie.halip@gmail.com>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: arnd@arndb.de
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of arndbergmann@gmail.com designates 209.85.222.195 as
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

On Wed, Aug 28, 2019 at 7:57 PM Josh Poimboeuf <jpoimboe@redhat.com> wrote:
> On Wed, Aug 28, 2019 at 05:29:39PM +0200, Arnd Bergmann wrote:
> > On Wed, Aug 28, 2019 at 4:51 PM Josh Poimboeuf <jpoimboe@redhat.com> wrote:
> exit.o: warning: objtool: abort()+0x3: unreachable instruction
> hugetlb.o: warning: objtool: hugetlb_vm_op_fault()+0x3: unreachable instruction
> idle.o: warning: objtool: switched_to_idle()+0x3: unreachable instruction
> madvise.o: warning: objtool: hugepage_madvise()+0x3: unreachable instruction
> privcmd.o: warning: objtool: privcmd_ioctl_mmap_batch()+0x5dd: unreachable instruction
> process.o: warning: objtool: play_dead()+0x3: unreachable instruction
> rmap.o: warning: objtool: anon_vma_clone()+0x1c2: unreachable instruction
> s5c73m3-core.o: warning: objtool: s5c73m3_probe()+0x262: unreachable instruction
> videobuf2-core.o: warning: objtool: vb2_core_dqbuf()+0xae6: unreachable instruction
> xfrm_output.o: warning: objtool: xfrm_outer_mode_output()+0x109: unreachable instruction
> - clang issue: trying to finish frame pointer setup after BUG() in unreachable code path
>
> pinctrl-ingenic.o: warning: objtool: ingenic_pinconf_set()+0x10d: sibling call from callable instruction with modified stack frame
> - bad clang bug: sibling call without first popping registers

I reduced the last one to https://godbolt.org/z/7lZZL3

enum { PIN_CONFIG_BIAS_DISABLE } pinconf_to_config_param(void);
void ingenic_pinconf_set() {
  switch (pinconf_to_config_param())
  case PIN_CONFIG_BIAS_DISABLE: {
    asm("%c0:\n\t.pushsection .discard.unreachable\n\t.long %c0b - "
        ".\n\t.popsection\n\t"
        :
        : "i"(6));
    __builtin_unreachable();
  }
}
void ingenic_pinconf_group_set() {}

$ clang-9  -Os -mretpoline-external-thunk -fno-omit-frame-pointer -c
pinctrl-ingenic.i
$ objtool check  --retpoline --uaccess pinctrl-ingenic.o
pinctrl-ingenic.o: warning: objtool: ingenic_pinconf_set()+0xb:
sibling call from callable instruction with modified stack frame

$objdump -d pinctrl-ingenic.o
0000000000000000 <ingenic_pinconf_set>:
   0: 55                    push   %rbp
   1: 48 89 e5              mov    %rsp,%rbp
   4: e8 00 00 00 00        callq  9 <ingenic_pinconf_set+0x9>
5: R_X86_64_PLT32 pinconf_to_config_param-0x4
   9: 85 c0                test   %eax,%eax
   b: 74 02                je     f <ingenic_pinconf_group_set>
   d: 5d                    pop    %rbp
   e: c3                    retq

000000000000000f <ingenic_pinconf_group_set>:
   f: c3                    retq

I suspect that's actually another variant of the others. It doesn't
seem to be an
actual sibling call, just branching into what happens to be the start of the
next function in an unreachable code path.

Using '-O2' instead of '-0s', I get

pinctrl-ingenic.o: warning: objtool: ingenic_pinconf_set() falls
through to next function ingenic_pinconf_group_set()

0000000000000000 <ingenic_pinconf_set>:
   0: 55                    push   %rbp
   1: 48 89 e5              mov    %rsp,%rbp
   4: e8 00 00 00 00        callq  9 <ingenic_pinconf_set+0x9>
5: R_X86_64_PLT32 pinconf_to_config_param-0x4
   9: 85 c0                test   %eax,%eax
   b: 74 02                je     f <ingenic_pinconf_set+0xf>
   d: 5d                    pop    %rbp
   e: c3                    retq
   f: 90                    nop

0000000000000010 <ingenic_pinconf_group_set>:
  10: c3                    retq

        Arnd

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK8P3a0C6jvBqsO2KXOV-j3eQ07zvCjUWqaYdTKDfne72EWUDA%40mail.gmail.com.
