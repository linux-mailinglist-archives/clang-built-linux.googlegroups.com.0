Return-Path: <clang-built-linux+bncBC3ZPIWN3EFBB3MAVKEQMGQEMB6KXVQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x23e.google.com (mail-lj1-x23e.google.com [IPv6:2a00:1450:4864:20::23e])
	by mail.lfdr.de (Postfix) with ESMTPS id 0329C3FA724
	for <lists+clang-built-linux@lfdr.de>; Sat, 28 Aug 2021 20:29:01 +0200 (CEST)
Received: by mail-lj1-x23e.google.com with SMTP id x10-20020a05651c024a00b001cf8e423d60sf4432411ljn.12
        for <lists+clang-built-linux@lfdr.de>; Sat, 28 Aug 2021 11:29:01 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1630175341; cv=pass;
        d=google.com; s=arc-20160816;
        b=vF/2f2YbWtxluORkWSuiKhTKsjqTQuzrVVSC5WHXfkJ3H2AlhzyZKDhXZ0696d+bn+
         qV/lcoR2fhxaK0r1naKmVTZxuuNey6KemK/rMULWWIKw+vBs6xrel4HDqD7TNhHvR9QO
         K25LCsSkShNHVH9iQCQ7YZnbsmoffcmrsDZgWZ6QE3737h/mi67sT7snVWhGT+0qQM5C
         jMwGYWtIx6C7tHVWtmc7F/IOYEOLNv8o38FdCtNM5SoGoUpH8P6ucs5oOoCuIqvH9VeV
         y8b41iSm9vJ49iwWZud+BX0GjbV3ZnZhBXg3gQwi8SUszxcaOv2tCuiyT61OltLKMNsO
         a5vw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:to:subject:message-id:date:from
         :mime-version:sender:dkim-signature;
        bh=u4kZE5e2u6f4qgp6+khSpH42oOhEHVS/5aJDq8e0XYg=;
        b=GUWd/aYWU6aRjfweGmltgC8X/mshKCknhuBGJ55VO91ijk0fe+DOrx71kkMl/DFQaR
         rklr1gqOTwkiWyotUetq4DZzK8j8DZO0w5l6MVVgw4DPNak5mqOkCtTZHKaRDFkw6JQ9
         WLCHHkO++jUmMo+d/j5JaaApvABUCFaGGoE7YArbpSTfLjEnc6MA37GlkPjtDg2Zhxvh
         4acwnBR0SIrXmfJsMXVJy52ZJ2PkSU00dy5vtRKs0/7zuLpp3oVbNUi8We3exA0YfvAV
         ZELTVTZXZFiBR7d1ltofSpHHQy/WIQjLzwwSySp4Ssp2XkTUAw49tq+ujfNrxoEpZjgl
         M30g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linux-foundation.org header.s=google header.b=b2GufWeP;
       spf=pass (google.com: domain of torvalds@linuxfoundation.org designates 2a00:1450:4864:20::134 as permitted sender) smtp.mailfrom=torvalds@linuxfoundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:mime-version:from:date:message-id:subject:to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=u4kZE5e2u6f4qgp6+khSpH42oOhEHVS/5aJDq8e0XYg=;
        b=TTl5HX4T0Hil7iVsITI6o8dMvQofSffmZVwS6NoPQBpj8bURriuCanhj+wob5a00EM
         gr6b35GpiMZYp2XirE5VTCCykS8jWEl+EnatCudCqW5krfVvXZ26alOTYLBSa1b9Nzj9
         0+Ita73TPHOcnc6hc6DcgEMXoogmVsZyExP7Eh0PpGtP7ftW6uYdVRggdfYv3haGGypi
         wsRrDOrdHAdilxSCG32BSR4FzPkWI9tMet2ro/0ZyewgdALKgLvk3ClZLGjxdK9k9dV1
         BxC+cHXBVMiP12EmmvjE1yf+liFVsoJuo9ztdEiiCPz3ExmwwQ+8w0TjnYVHWWMWv29n
         c/qA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:date:message-id:subject
         :to:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=u4kZE5e2u6f4qgp6+khSpH42oOhEHVS/5aJDq8e0XYg=;
        b=Ab7Y9+mbrD2ionqWSUk6YS+UkuvQJZylGAGXEDsZbgLFMn68AQJDpz3KO3UD+Nvf15
         MthFtz2nOlieVxeCpIkAg/f5hxwgtqiXb+MkJ/54kPXwxF4l7NR55U+JxwJWWYNytPzV
         FGNiqVwBNjvaIkIn2MwisDTMh/louzyqL4cvZZli58+kMEvRDYlvTN3YiLw83kANjdfS
         wLfafYORP33PtOVHJdHKHjIj8D2sBeR7qMG4Hfjgm2nCX7zo58VWtR51hjVZuU4Tg/NH
         Gr+M0+Gi94whWb2PEtUXg4zWqCWpGHstZZGJCVkHI93NCblstm++r55gJp+Ejt1VOKpw
         Ed1g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532eSrr6I5t+8M7XX7bPlvw9HUzS20LWty13mFQHlhTQ9n6Cgpln
	dFLs3k4YJhJpdOQiYXZilKQ=
X-Google-Smtp-Source: ABdhPJzIljKdPo4r2woivZf7tNwIKkfY2ow8mzDk9/2Gin+90KMCYdFyImxD56Qa3mhW74oNcdPP1g==
X-Received: by 2002:a2e:a316:: with SMTP id l22mr12766143lje.104.1630175341471;
        Sat, 28 Aug 2021 11:29:01 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:9109:: with SMTP id m9ls2396518ljg.2.gmail; Sat, 28 Aug
 2021 11:29:00 -0700 (PDT)
X-Received: by 2002:a2e:a4d1:: with SMTP id p17mr13064111ljm.82.1630175340269;
        Sat, 28 Aug 2021 11:29:00 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1630175340; cv=none;
        d=google.com; s=arc-20160816;
        b=iKZNGQiuTLJMiQMd0s4FDEJtXwNAJ7nZG09DSqmGJzmLvhRMGuymMsEQQoJ2Lp8Gia
         pN/jRRqiQyi4HaqaysKXm+7uRxWX1TFhi4OnfwHs5q/nQs0I+5MUEOass0IolV3d5zA4
         bI3/sJXaNhB33nNXKKjfmtyxnldi60Tn3tFmZyfHrb50DAJN5WYph21lZZ0XPZBltbYV
         yV9wt1gUkM4coGBi671GiKXi+ttq7moeKkSSVtOvJwEliY0K7OamWxUQtxIAXGFKdu6N
         YqEZ1zktpRFNLfcTtV6mDeaSb4Z9cLLIy7zn+8b7LsO0yu2qLaYs6v+MQtqRGPA8o4pB
         wbfQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:subject:message-id:date:from:mime-version:dkim-signature;
        bh=DqPYXaCj4fVUjITASKg9PLRuAN13W3vLNjZDse15QaU=;
        b=glXG3lAEnaMsB1JH1y2WF+6Z1PpsEQMj8f54uzcjCXQj2LwkEuj8zB9y2/itnDBnzV
         hljenLqNakxOW18iQnJYIaKFDnbO2fgvOAD+qReM2j35Kww9nSZZyclmFayykyNA4x3e
         jR0JvvjQ8xkdHGX/Vk2gk8SRuRourlMiRJPx7MLXWr2Lp+9BKlAHwT2lHg1xB61NxBfT
         A5a3lT1rTBYTC+/h/slnZQRwrdyC7Uf8VNt/4VFpHBK4TUSIxePT3aEYbN+BlZaol1fU
         ZqC+quI3zq7Vmn8iLBTBfdZcZWPhtjc5ujU7XCv76bfk1c/1AR4WkhAGZCugZuPD/F3y
         PoSw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linux-foundation.org header.s=google header.b=b2GufWeP;
       spf=pass (google.com: domain of torvalds@linuxfoundation.org designates 2a00:1450:4864:20::134 as permitted sender) smtp.mailfrom=torvalds@linuxfoundation.org
Received: from mail-lf1-x134.google.com (mail-lf1-x134.google.com. [2a00:1450:4864:20::134])
        by gmr-mx.google.com with ESMTPS id l20si17785lfg.9.2021.08.28.11.29.00
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 28 Aug 2021 11:29:00 -0700 (PDT)
Received-SPF: pass (google.com: domain of torvalds@linuxfoundation.org designates 2a00:1450:4864:20::134 as permitted sender) client-ip=2a00:1450:4864:20::134;
Received: by mail-lf1-x134.google.com with SMTP id p38so21869847lfa.0
        for <clang-built-linux@googlegroups.com>; Sat, 28 Aug 2021 11:29:00 -0700 (PDT)
X-Received: by 2002:a05:6512:acd:: with SMTP id n13mr5685988lfu.408.1630175339534;
        Sat, 28 Aug 2021 11:28:59 -0700 (PDT)
Received: from mail-lj1-f180.google.com (mail-lj1-f180.google.com. [209.85.208.180])
        by smtp.gmail.com with ESMTPSA id d9sm931106lfv.24.2021.08.28.11.28.58
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 28 Aug 2021 11:28:59 -0700 (PDT)
Received: by mail-lj1-f180.google.com with SMTP id y6so17732026lje.2
        for <clang-built-linux@googlegroups.com>; Sat, 28 Aug 2021 11:28:58 -0700 (PDT)
X-Received: by 2002:a05:651c:908:: with SMTP id e8mr13015729ljq.507.1630175338708;
 Sat, 28 Aug 2021 11:28:58 -0700 (PDT)
MIME-Version: 1.0
From: Linus Torvalds <torvalds@linux-foundation.org>
Date: Sat, 28 Aug 2021 11:28:42 -0700
X-Gmail-Original-Message-ID: <CAHk-=wiNHx_GpjoWt9VMffKunZZy5MaTe3pM+cpBgE7OyyrX5Q@mail.gmail.com>
Message-ID: <CAHk-=wiNHx_GpjoWt9VMffKunZZy5MaTe3pM+cpBgE7OyyrX5Q@mail.gmail.com>
Subject: Nasty clang loop unrolling..
To: Nick Desaulniers <ndesaulniers@google.com>, Nathan Chancellor <nathan@kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: torvalds@linux-foundation.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linux-foundation.org header.s=google header.b=b2GufWeP;
       spf=pass (google.com: domain of torvalds@linuxfoundation.org designates
 2a00:1450:4864:20::134 as permitted sender) smtp.mailfrom=torvalds@linuxfoundation.org
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

So it turns out that s390 had a bug due to its own private 'strncpy()'
being broken and not doing the insane thing that strncpy() is defined
to do.

Which is fine - I understand exactly how that happens, and strncpy()
is one of my least favorite functions.

Anyway, I suggested that s390 just use the generic function we have,
instead of implementing its own version, because nobody really cares,
and the generic function is small and simple and "good enough". See

    https://lore.kernel.org/lkml/CAHk-=wjhKNB_1a6wjjPh2PvMrtjVs=DgGY5uM2jq3WBBaYMyGQ@mail.gmail.com/

for details, although they don't really matter for this email.

What matters for this email is that writing that thing made me go "ok,
just how good does that generic version look, compared to the old
legacy 32-bit historical version that uses the x86 string instructions
just because it literally goes all the way back to my learning the
i386 and learning gcc inline asm".

Because yes, that routine *literally* exists in that exact form in
linux-0.01 - it's moved, and it has lost a "cld" instruction since we
now have the rule that DF is always clear in the kernel, but our old
32-bit x86 'strncpy()" is horrible slow garbage, but also a historical
gem from 30 years ago.

But x86-64 doesn't do that, so I just built lib/string,c with clang,
to see what it could do.

Can clang do better than complete garbage written by a clueless person
from three decades ago?

The end result is not good.

Clang decides to unroll that loop four times, and in the process
making the code 4x the size it should be, for absolutely zero gain.

This is the whole function with #pragma nounroll (ie "sane"):

   strncpy:
           movq %rdi, %rax
           testq        %rdx, %rdx
           je   .LBB3_5
           xorl %ecx, %ecx
           jmp  .LBB3_2
           .p2align     4, 0x90
   .LBB3_4:
           addq $1, %rcx
           cmpq %rcx, %rdx
           je   .LBB3_5
   .LBB3_2:
           movzbl       (%rsi), %edi
           movb %dil, (%rax,%rcx)
           testb        %dil, %dil
           je   .LBB3_4
           addq $1, %rsi
           jmp  .LBB3_4
   .LBB3_5:
           retq

and honestly, that's perfectly fine. It's very much what the code
does. It's 44 bytes, it fits in one cacheline, it's not horrible. It's
not what I would have done by hand, and clang seems a bit too eager to
move the loop end test to the top of the loop, but whatever. I see
nothing that makes me go "that's horrible".

Now, admittedly it's not particularly *smart* either - you could turn
the conditional "branch over a single constant add" into a computed
add instead, so the

           testb        %dil, %dil
           je   .LBB3_4
           addq $1, %rsi
           jmp  .LBB3_4

could - for example - have been done as

           addb $255,%dil
           adcq $0, %rsi
           jmp  .LBB3_4

which could avoid some branch mispredicts.  And honestly then the code
that clang moved to the top should really have been at the bottom of
the loop, but I don't know if it would matter. The above might look a
bit more clever, but the data dependency might be worse if the branch
predicts well. The branch behavior is bimodal - the loop starts out
not taking that "je", and ends up taking it - so it has an almost
guaranteed mispredict in the middle of the loop, but whatever. You win
some, you lose some.

ANYWAY.

The above discussion is about *reasonable* code.

What clang actually generates bears very little resemblance to either
the above simple and short, or the "clever and one conditional branch
shorter" version.

What clang actually generates is this horror:

   strncpy:
           movq %rdi, %rax
           testq        %rdx, %rdx
           je   .LBB3_19
           leaq -1(%rdx), %r8
           movq %rdx, %r9
           andq $3, %r9
           je   .LBB3_2
           xorl %edi, %edi
           jmp  .LBB3_4
           .p2align     4, 0x90
   .LBB3_6:
           addq $1, %rdi
           cmpq %rdi, %r9
           je   .LBB3_7
   .LBB3_4:
           movzbl       (%rsi), %ecx
           movb %cl, (%rax,%rdi)
           testb        %cl, %cl
           je   .LBB3_6
           addq $1, %rsi
           jmp  .LBB3_6
   .LBB3_7:
           leaq (%rax,%rdi), %r9
           subq %rdi, %rdx
           cmpq $3, %r8
           jb   .LBB3_19
           jmp  .LBB3_9
   .LBB3_2:
           movq %rax, %r9
           cmpq $3, %r8
           jae  .LBB3_9
   .LBB3_19:
           retq
   .LBB3_9:
           xorl %edi, %edi
           jmp  .LBB3_10
           .p2align     4, 0x90
   .LBB3_18:
           addq $4, %rdi
           cmpq %rdi, %rdx
           je   .LBB3_19
   .LBB3_10:
           movzbl       (%rsi), %ecx
           movb %cl, (%r9,%rdi)
           testb        %cl, %cl
           je   .LBB3_12
           addq $1, %rsi
   .LBB3_12:
           movzbl       (%rsi), %ecx
           movb %cl, 1(%r9,%rdi)
           testb        %cl, %cl
           je   .LBB3_14
           addq $1, %rsi
   .LBB3_14:
           movzbl       (%rsi), %ecx
           movb %cl, 2(%r9,%rdi)
           testb        %cl, %cl
           je   .LBB3_16
           addq $1, %rsi
   .LBB3_16:
           movzbl       (%rsi), %ecx
           movb %cl, 3(%r9,%rdi)
           testb        %cl, %cl
           je   .LBB3_18
           addq $1, %rsi
           jmp  .LBB3_18

which is 170 bytes in size instead of the 44 bytes, so now it takes up
three cachelines.

Now, I don't know how common this is. Maybe this is the only place in
the kernel where this unrolling case happens. But in general, loop
unrolling in the kernel is a big mistake unless it's a very obvious
case (ie small constant full unroll makes perfect sense: if you see

        if (i = 0; i < 4; i++)
                *p++ = *q++;

then you should most definitely unroll that to

        *p++ = *q++;
        *p++ = *q++;
        *p++ = *q++;
        *p++ = *q++;

because it's simply smaller and simpler to not have any conditionals
at all, and just do four iterations statically.

But the 'strncpy()' kind of unrolling is a mistake when kernel loops
tend to have very low loop counts.

As far as I know, gcc doesn't do any unrolling at -O2.

What is the magic to make clang not do stupid things like this? I
obviously know about that

    #pragma nounroll

but I don't want to mark various unimportant functions. I'd much
rather have the default be "don't do stupid things", and then if we
see a case where loop unrolling really matters, and it's important, we
can mark *that* specially.

Hmm?

                Linus

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAHk-%3DwiNHx_GpjoWt9VMffKunZZy5MaTe3pM%2BcpBgE7OyyrX5Q%40mail.gmail.com.
