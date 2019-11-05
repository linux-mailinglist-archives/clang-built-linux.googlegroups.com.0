Return-Path: <clang-built-linux+bncBCOZDPXB2EERB57SQ7XAKGQEOLPAHYY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x73b.google.com (mail-qk1-x73b.google.com [IPv6:2607:f8b0:4864:20::73b])
	by mail.lfdr.de (Postfix) with ESMTPS id 216D2F09A5
	for <lists+clang-built-linux@lfdr.de>; Tue,  5 Nov 2019 23:36:41 +0100 (CET)
Received: by mail-qk1-x73b.google.com with SMTP id m83sf22851437qke.14
        for <lists+clang-built-linux@lfdr.de>; Tue, 05 Nov 2019 14:36:41 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1572993400; cv=pass;
        d=google.com; s=arc-20160816;
        b=l/SCwBs46AyWz+KQqWXZEQEmCoK6wE6wUijjJogUrwl1vSGCTXqZoaNF6ANk/dqKY+
         iK0gYvqvFI/YjSK8ZZOtafU6jfGYPL3fgYEztMt9iOdw6knkpU/mLoQZj8DEVs3ahdbN
         cFj2sYTheMZ7ibKre8qEUvkK1HwHBC9ckwZHbLBHZdOnb+Bu7ACegm3XffGG9ziNfkQp
         r93C0UUKvU5x0o4jCeNhFXuh3h+/d35aivA01+we5bq8PRvdeypFYvfizbdJikavsGIY
         uRKRAurnUhlGw1QDm1oKzBbO0rkwCzOnvqIHPrZYzFXkXh5yRwNj9+W4HZ+VKNmbs/kM
         Gvqw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=GYZ3M9x8QoU+9bNnAvbcrnCGOK38PK2kWscz9h5TZjk=;
        b=TmSmvhGrHMSWae762QNvi19kkxWESP2DiOGFoP9hdE9Rdp2RTOgdzmdK74Wc843kyF
         zVdmEAsmyCG+uq2UNibG+KpGjjAt+bLn09yYxO0Z74YO5I7u1sE8S1P5513TeOQwNeQa
         Yv2B6F2c/VMaXh7zUL8MplfxciGgPzMMQf0bA7YD1+4ugqxgzx+waBkCoPT+jQ18C3oB
         FLWt2ZHTa6IgSbNyy7VtjjIoBmU2Qzi3su7R454mwYRTENeCUPwIRb08edT2BPSTfuq7
         +voK7MUsi1TzMQCKth0ghVxMqrdbBLh5KcsCt2wWNEiF2ZH+pxTRyb95jKUP+2iyt37N
         oTdw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=J2teYDfQ;
       spf=pass (google.com: domain of isanbard@gmail.com designates 2607:f8b0:4864:20::d2e as permitted sender) smtp.mailfrom=isanbard@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=GYZ3M9x8QoU+9bNnAvbcrnCGOK38PK2kWscz9h5TZjk=;
        b=IZp00z6OEpah11NOePw5BTn8S7nBN8Q90H85y2HVZ7BzBH7MDPekcdrnOrEmO+2Rd5
         H/mZkpBK1vOcd0baAsCt2iD8yWutTa9ZoApCYhQOD5TpWynbFdJpfnu9+YCn6q5QkwO6
         d+/jz1/NAPjBzTKEQ14LbhL+cXv/wEBZbifXybai0F9Oj72nE3a50QmqagmLODR2geNt
         ahaIp/BVd29bwrZkJR7j2AMXDvc9SvDuXjTmKmAjXwDiBYDj7Tx7rFAn5pQaXYTDS5Nv
         qqdn2vZlsPolzZIsxlrcWaKxCB9jKQqnMMhvHgdOff3oo9CBSFedQzdr97W3+GWp+gii
         zZfA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=GYZ3M9x8QoU+9bNnAvbcrnCGOK38PK2kWscz9h5TZjk=;
        b=Y8I59oHfvKbgid1Bv7ufMgQf5CVOfKNPQIOXbrLNFQPG6HYyqNl/rVT3QH6z0HHQvq
         oqpIXjtZEoWYJiWFYcWBNgdhtEjBft9Nc/9TyW9Hr2wxu1OpfRBExEemOBekBDnsV2Lf
         CGyLQd3bfkE7gIaYekcZplZL5DreehOTrmiq2+qrQ3XHVW49dgg71vZI5tBJYsfqI2i0
         JLISs5rgYqx1d9QcJAqbzVM9ju/TU7IdK7GcKkcqBlIXjUzQxqALPBB9fWIylTp88WYf
         KM/A6OR8uVQE+7EWA/U11rvHMpwDyGFS8pDEB+lkYvLvznIb+IxE5naFMAAtGfMEax6L
         0ipg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=GYZ3M9x8QoU+9bNnAvbcrnCGOK38PK2kWscz9h5TZjk=;
        b=mQTdvhNjSlzSSMhdgwS+mkUcDxuEoWDC1eDbnsT7wD4hGiBx0SaMHOs4T1ZvrCEjjA
         mDXAFAFINUiyaukQKh6YXfyFGKOWdU3AL0AGlqY7Fc4uNib/ztqTXVHUN8jnwTWzxe2a
         TxzCaRHrvYNZekzVLKztHZW6qp4nbLfQT0dcQBeCL2VG69ivaxNwURNpS6hH3H9CKYiy
         XZy5y/ajdQzjnJKCk2OuwCLHqtTfBI2fiIxdrPLPWSwg+ZQPqe0STkUr5kDPB0vZY9fA
         0bJIMCQ5+LyjyT1sYAXi9r0S3KboZg5d9ihsPcBiqmeUOTwR/tixKXi+uo+fcYaQrbjv
         nAeA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWvNnvoqSCfqEtxhDLvsHl5x7h4ReYF6tc9zqslFiQGjQ9ao3O4
	Q0wuENolCKFlEy0vpzqLZUk=
X-Google-Smtp-Source: APXvYqyuwQVM4hN9PHexYi36nQ2oXpAnaLDMctcEmcgb+RmCNbxBYNcfF8KCJI0A2uzJOXpFosLRRg==
X-Received: by 2002:ac8:60cf:: with SMTP id i15mr17000593qtm.339.1572993399840;
        Tue, 05 Nov 2019 14:36:39 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:620a:13c7:: with SMTP id g7ls77980qkl.11.gmail; Tue, 05
 Nov 2019 14:36:39 -0800 (PST)
X-Received: by 2002:a37:6643:: with SMTP id a64mr23244176qkc.144.1572993399250;
        Tue, 05 Nov 2019 14:36:39 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1572993399; cv=none;
        d=google.com; s=arc-20160816;
        b=ebw+6pJfIQEussHLMUNIaqqUOovYLnieBzz/OiTrYURlJI458oI5clWl1HAWAN7Dwk
         jyn+PoG7r9ASPfgtRDQ+BwOmonpJC6i/BKNspKSZo1Xiw+Hf610FgMe53c/I/CuzfcCZ
         1cDS3uVyvfaZromsNZXSt58JX7a2llgiGMNx9oOmlURM5ZdBwYguNc0JQ8ulB2BsgVRi
         aF23gRkZXD2h5WdBUMP4Zkq//yUkopxb7sVEDaObSm8CAvV9MHtk46mXs5Q3LoHp2/hY
         dDVY+EbqYZNRaXJBsJJ8DOFG2JQ35Wy1kGfk2OYSjy8ZhfOkEO32FYAiJAnvuETDVLKO
         m6Kg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=Lo3ychdQmxwW6hM41EdQsP3oa0eWohaWQuZgmHXMfZo=;
        b=NMO5RaRBXC2ZX1ObO/dWYGQoVi8QCtkcuAYqqUwSFlmMqqtx81fzTvWx2DHmcKpTMg
         NfQMDAoDkZAXZTmOibRVlukk5gcld0imr8dAVUPXDjqN1EFyWSYi04APuvnDyPSmRfOW
         ZaCIk4/M877QbHNrXu6Ct+XSmP/2zdzRpJ98+KfqkVb9himH6JxY3XuTXnwXgwzRdu/0
         bd+v5It/tkTNvhwPXUI1FL8Ao9nNTS+eLAnCpJhnSWouCdBoL+IwX5MeYiAeUIF5qTqI
         Kh+S03qwwpHtsNbeuA2KTHVWoicx6mEeDvjjpku132uqf3bKnXzM1tC2dfpIuv/aN1m3
         YX/g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=J2teYDfQ;
       spf=pass (google.com: domain of isanbard@gmail.com designates 2607:f8b0:4864:20::d2e as permitted sender) smtp.mailfrom=isanbard@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-io1-xd2e.google.com (mail-io1-xd2e.google.com. [2607:f8b0:4864:20::d2e])
        by gmr-mx.google.com with ESMTPS id d189si1121656qkb.1.2019.11.05.14.36.39
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 05 Nov 2019 14:36:39 -0800 (PST)
Received-SPF: pass (google.com: domain of isanbard@gmail.com designates 2607:f8b0:4864:20::d2e as permitted sender) client-ip=2607:f8b0:4864:20::d2e;
Received: by mail-io1-xd2e.google.com with SMTP id j13so8208112ioe.0
        for <clang-built-linux@googlegroups.com>; Tue, 05 Nov 2019 14:36:39 -0800 (PST)
X-Received: by 2002:a02:e47:: with SMTP id 68mr21441425jae.126.1572993398487;
 Tue, 05 Nov 2019 14:36:38 -0800 (PST)
MIME-Version: 1.0
References: <CAEzuVAf75E2ccvrW5TmQGKYWGkFJJ+8sUq_8mnQHrq_4a987pQ@mail.gmail.com>
 <CAEzuVAd4m+uyVM-ZKMSgoF=Sn6pNd2SB99+OaRQD-D-_TVRj8g@mail.gmail.com>
 <CAKwvOdnZZ8BcwJq0ik3verXhVXykzG834X=SkyHsnvDcoAJ=Uw@mail.gmail.com>
 <CAA2zVHqPt1HWmsRZDEBY-d8N897E9Q7KU4iLC-kD2JaxfyH2Uw@mail.gmail.com>
 <CAEzuVAcMcrnoG8c22RPGGZfgQfkxHcsCjB9oc5mFce6PL8NL-A@mail.gmail.com>
 <CAEzuVAc-7oUsFirqdYSTZxc2NNsDEFq2pNoFnBP-co4y2Mv1aw@mail.gmail.com>
 <CAA2zVHroNZHz2uRn4q6HyDx-PmTLHEBbPsfPizbDMcXoi6GZGA@mail.gmail.com>
 <CAEzuVAeAw7=FzfF0-Kg-VG0LXr3U-PwEVfeq_AxD=dr3EfeA5Q@mail.gmail.com>
 <CAA2zVHqRNRENiSU6OpXwXo9r2gnUKEXO7DeKD=LDAnGK9NO82Q@mail.gmail.com>
 <CAEzuVAd5mC=f8RrmV-LpV8rRyVP_peay5OTE3W3x-cOL9xkPEw@mail.gmail.com>
 <7df81b0d-77b3-1bff-999b-eb4c73761886@anl.gov> <CAEzuVAeVa5uanYemuow-FEXPuhX3j8uDDgbqkj1ndS5KLCrM2Q@mail.gmail.com>
 <0ecb4785-6669-cb99-1d5d-bf7c6050d893@anl.gov>
In-Reply-To: <0ecb4785-6669-cb99-1d5d-bf7c6050d893@anl.gov>
From: Bill Wendling <isanbard@gmail.com>
Date: Tue, 5 Nov 2019 14:36:27 -0800
Message-ID: <CAEzuVAf8djBDPo0ye3o6PT8_WaMFawKw4UA1Xi9N-vJnZt1WWg@mail.gmail.com>
Subject: Re: [llvm-dev] [cfe-dev] [RFC] ASM Goto With Output Constraints
To: "Finkel, Hal J." <hfinkel@anl.gov>
Cc: James Y Knight <jyknight@google.com>, llvm-dev <llvm-dev@lists.llvm.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Nick Desaulniers <ndesaulniers@google.com>, 
	"cfe-dev@lists.llvm.org Developers" <cfe-dev@lists.llvm.org>
Content-Type: multipart/alternative; boundary="000000000000c042410596a11073"
X-Original-Sender: isanbard@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=J2teYDfQ;       spf=pass
 (google.com: domain of isanbard@gmail.com designates 2607:f8b0:4864:20::d2e
 as permitted sender) smtp.mailfrom=isanbard@gmail.com;       dmarc=pass
 (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

--000000000000c042410596a11073
Content-Type: text/plain; charset="UTF-8"

I have a WIP implementation here: https://reviews.llvm.org/D69868. It only
supports use of returned values on the "normal" path. Use on the abnormal
path is very complex and may not be needed. If people clamor for it, then
we can always add it later after further review.

PTAL!
-bw

On Tue, Jul 2, 2019 at 3:35 PM Finkel, Hal J. <hfinkel@anl.gov> wrote:

> On 7/2/19 12:42 AM, Bill Wendling wrote:
>
> On Mon, Jul 1, 2019 at 6:25 PM Finkel, Hal J. <hfinkel@anl.gov> wrote:
>
>> On 7/1/19 1:38 PM, Bill Wendling via llvm-dev wrote:
>>
>> On Fri, Jun 28, 2019 at 3:35 PM James Y Knight <jyknight@google.com>
>> wrote:
>>
>>> On Fri, Jun 28, 2019 at 5:53 PM Bill Wendling <isanbard@gmail.com>
>>> wrote:
>>>
>>>> On Fri, Jun 28, 2019 at 1:48 PM James Y Knight <jyknight@google.com>
>>>> wrote:
>>>>
>>>>> On Fri, Jun 28, 2019 at 3:00 PM Bill Wendling <isanbard@gmail.com>
>>>>> wrote:
>>>>>
>>>>>> On Thu, Jun 27, 2019 at 1:44 PM Bill Wendling <isanbard@gmail.com>
>>>>>> wrote:
>>>>>>
>>>>>>> On Thu, Jun 27, 2019 at 1:29 PM James Y Knight <jyknight@google.com>
>>>>>>> wrote:
>>>>>>>
>>>>>>>> I think this is fine, except that it stops at the point where
>>>>>>>> things actually start to get interesting and tricky.
>>>>>>>>
>>>>>>>> How will you actually handle the flow of values from the callbr
>>>>>>>> into the error blocks? A callbr can specify requirements on where its
>>>>>>>> outputs live. So, what if two callbr, in different branches of code,
>>>>>>>> specify _different_ constraints for the same output, and list the same
>>>>>>>> block as a possible error successor? How can the resulting phi be codegened?
>>>>>>>>
>>>>>>>> This is where I fall back on the statement about how "the
>>>>>>> programmer knows what they're doing". Perhaps I'm being too cavalier here?
>>>>>>> My concern, if you want to call it that, is that we don't be too
>>>>>>> restrictive on the new behavior. For example, the "asm goto" may set a
>>>>>>> register to an error value (made up on the spot; may not be a common use).
>>>>>>> But, if there's no real reason to have the value be valid on the abnormal
>>>>>>> path, then sure we can declare that it's not valid on the abnormal path.
>>>>>>>
>>>>>>> I think I should explain my "programmer knows what they're doing"
>>>>>> statement a bit better. I'm specifically referring to inline asm here. The
>>>>>> more general "callbr" case may still need to be considered (see Reid's
>>>>>> reply).
>>>>>>
>>>>>> When a programmer uses inline asm, they're implicitly telling the
>>>>>> compiler that they *do* know what they're doing  (I know this is common
>>>>>> knowledge, but I wanted to reiterate it.). In particular, either they need
>>>>>> to reference an instruction not readily available from the compiler (e.g.
>>>>>> "cpuid") or the compiler isn't able to give them the needed performance in
>>>>>> a critical section. I'm extending this sentiment to callbr with output
>>>>>> constraints. Let's take your example below and write it as "normal" asm
>>>>>> statements one on each branch of an if-then-else (please ignore any syntax
>>>>>> errors):
>>>>>>
>>>>>> if:
>>>>>>   br i1 %cmp, label %true, label %false
>>>>>>
>>>>>> true:
>>>>>>   %0 = call { i32, i32 } asm sideeffect "poetry $0, $1",
>>>>>> "={r8},={r9}" ()
>>>>>>   br label %end
>>>>>>
>>>>>> false:
>>>>>>   %1 = call { i32, i32 } asm sideeffect "poetry2 $0, $1",
>>>>>> "={r10},={r11}" ()
>>>>>>   br label %end
>>>>>>
>>>>>> end:
>>>>>>   %vals = phi { i32, i32 } [ %0, %true ], [ %1, %false ]
>>>>>>
>>>>>> How is this handled in codegen? Is it an error or does the back-end
>>>>>> handle it? Whatever's done today for "normal" inline asm is what I *think*
>>>>>> should be the behavior for the inline asm callbr variant. If this doesn't
>>>>>> seem sensible (and I realize that I may be thinking of an "in a perfect
>>>>>> world" scenario), then we'll need to come up with a more sensible solution
>>>>>> which may be to disallow the values on the error block until we can think
>>>>>> of a better way to handle them.
>>>>>>
>>>>>
>>>>> This example is no problem, because instructions can be emitted
>>>>> between what's emitted by "call asm" and the end of the block (be it a
>>>>> fallthrough, or a jump instruction. What gets emitted there is a move of
>>>>> the output register to another location -- either a register or to the
>>>>> stack. And therefore at the beginning of the "end" block, "%vals" is always
>>>>> in a consistent location, no matter how you got to that block.
>>>>>
>>>>> But in the callbr case, there is not a location at which those moves
>>>>> can be emitted, after the callbr, before the jump to "error".
>>>>>
>>>>
>>>> I see what you mean. Let's say we create a pseudo-instruction (similar
>>>> to landingpad, et al) that needs to be lowered by the backend in a
>>>> reasonable manner. The EH stuff has an external process/library that
>>>> performs the actual unwinding and which sets the values accordingly. We
>>>> won't have this.
>>>>
>>>
>>>
>>>
>>>> What we could do instead is split the edges and insert the
>>>> copy-to-<where ever> statements there.
>>>>
>>>
>>> Exactly -- except that doing that is potentially an invalid transform,
>>> because the address is being used as a value, not simply a jump target. The
>>> label list is just a list of _possible_ jump targets, changing those won't
>>> actually affect anything. You'd instead need to change the blockaddress
>>> constant, but in the general case you don't know where that address came
>>> from -- (and it may therefore be required that you have the same address
>>> for two separate callbr instructions).
>>>
>>> I guess this kinda touches on some of the same issues as in the other
>>> discussion about the handling of the blockaddress in callbr and inlining,
>>> etc...
>>>
>>> I wonder if we could put some validity restrictions on the IR structure,
>>> rather than trying to fix things up after the fact by attempting to split
>>> blocks. E.g., we could state that it's invalid to have a phi which uses the
>>> value defined by a callbr, if it's conditioned on that same block as
>>> predecessor.  That is: it's valid to use _other_ values defined in the
>>> block ending in callbr, because they can be moved prior to the callbr. It's
>>> also valid to use the value defined by the callbr in a phi conditioned on
>>> some other intermediate block as predecessor, because then any required
>>> moves can happen in the intermediate block.
>>>
>>> I believe such an IR restriction should be sufficient to make it
>>> possible to emit valid code from the IR in all cases, but I'm a bit afraid
>>> of how badly adding such odd edge-cases might screw up the rest of the
>>> compiler and optimizer.
>>>
>>
>> I want to revisit this. Here are the situations we're confronted with:
>>
>>    1. The goto-target can be jumped to by 1 callbr instruction,
>>    2. The goto-target can be jumped to by N callbr instructions, which
>>    don't need a PHI node, and
>>    3. The goto-target can be jumped to by N callbr instructions, which
>>    *do* need a PHI node.
>>
>> I'm going to plug the instruction I created out of thin air a few emails
>> back, but better explain (I'm using an instruction instead of an intrinsic
>> because we want that instruction to be right after all non-PHI instructions
>> in the goto-target block). I'm _not_ suggesting we need this instruction.
>> It's just for demonstration purposes.
>>
>>
>> Situations (1) and (2) don't encounter an problem. Any value used in the
>> goto-target can be handled by inserting the code to extract that value in
>> the goto-target block:
>>
>>
>> bb1:
>>
>>   ...
>>
>>   %x.bb1 = callbr i32 asm sideeffect "...", "=r,X"(i32 *%x*, i8*
>> blockaddress(@bar, %goto.target))
>>
>>           to label %fallthrough1 [label %goto.target]
>>
>>
>> fallthrough1:
>>
>>   ...
>>
>>
>> bb2:
>>
>>   ...
>>
>>   %y.bb2 = callbr i32 asm sideeffect "...", "=r,X"(i32 *%y*, i8*
>> blockaddress(@bar, %goto.target))
>>
>>           to label %fallthrough2 [label %goto.target]
>>
>>
>> fallthrough2:
>>
>>   ...
>>
>>
>> goto.target:
>>
>>   %x.goto = <extract value from %x.bb1>
>>
>>   %y.goto = <extract value from %y.bb2>
>>
>>   ... <uses of %x.goto and %y.goto> ...
>>
>>
>> This leaves situation (3), which is far more complex as we've seen. To
>> reiterate, the issue here is that we need to extract the values returned by
>> callbr. This would typically be done by using a PHI node, but llvm may want
>> to split critical edges or push the calculation back to the predecessor
>> block, which won't work with the callbr asm, because it could branch out of
>> the asm at any point thus skipping the extraction. So we can't use PHI
>> nodes for these values. There are three classes of solutions to this:
>>
>>    1. Don't allow the values to be used in goto-targets, or
>>    2. Allow them, but with significant restrictions, or
>>    3. Allow them without using PHI nodes.
>>
>> Each has its benefits and drawbacks. As I've stated before, I think that
>> (1) is too restrictive, but if we can't come up with a good solution, it
>> may be our only option. Solution (2) could be a good compromise. However, I
>> want to propose a potential solution to (3).
>>
>> The core of my proposal is to replace the PHI node with code that will
>> replicate its behavior without code lowering trying to modify the CFG (at
>> least not in ways that may invalidate the asm). Here is example code:
>>
>>
>> bb1:
>>
>>   store i8* blockaddress(@bar, %bb1), i8** %src
>>
>>   %x.bb1 = callbr i32 asm sideeffect "...", "=r,X"(i32 %x, i8*
>> blockaddress(@bar, %goto.target))
>>
>>           to label %fallthrough1 [label %goto.target]
>>
>>
>> fallthrough1:
>>
>>   ...
>>
>>
>> bb2:
>>
>>   store i8* blockaddress(@bar, %bb2), i8** %src
>>
>>   %x.bb2 = callbr i32 asm sideeffect "...", "=r,X"(i32 %x, i8*
>> blockaddress(@bar, %goto.target))
>>
>>           to label %fallthrough2 [label %goto.target]
>>
>>
>> fallthrough2:
>>
>>   ...
>>
>>
>> goto.target:
>>
>>   %x1 = indirectval i8** %src, i32 [%x.bb1, %bb1], [%x.bb2, %bb2]
>>
>>   <extract values from %x1>
>>
>>   ...
>>
>>
>> This can be lowered to this:
>>
>> bb1:
>>
>>   store i8* blockaddress(@bar, %bb1), i8** %src
>>
>>   %x.bb1 = callbr i32 asm sideeffect "...", "=r,X"(i32 %x, i8*
>> blockaddress(@bar, %error))
>>
>>           to label %fallthrough1 [label %goto.target]
>>
>>
>> fallthrough1:
>>
>>   ...
>>
>>
>> bb2:
>>
>>   store i8* blockaddress(@bar, %bb2), i8** %src
>>
>>   %x.bb2 = callbr i32 asm sideeffect "...", "=r,X"(i32 %x, i8*
>> blockaddress(@bar, %error))
>>
>>           to label %fallthrough2 [label %goto.target]
>>
>>
>> fallthrough2:
>>
>>   ...
>>
>>
>> goto.target:
>>
>>   %src1 = load i8**, i8*** @src
>>
>>   %src.bb = load i8*, i8** %src1
>>
>>   switch i64 %src.bb, label %goto.target.body [ ; or if-then-else blocks
>>
>>       i64 ptrtoint i8* blockaddress(@bar, %bb1) to i64, label
>> %goto.target.bb1
>>
>>       i64 ptrtoint i8* blockaddress(@bar, %bb2) to i64, label
>> %goto.target.bb2
>>
>>   ]
>>
>>
>> goto.target.bb1:
>>
>>   %x1 = <extract value from %x.bb1>
>>
>>   br label %goto.target.body
>>
>>
>> goto.target.bb2:
>>
>>   %x2 = <extract value from %x.bb2>
>>
>>   br label %goto.target.body
>>
>>
>> goto.target.body:
>>
>>   %x.merge = phi i64 [%x1, label %goto.target.bb1], [%x1, label
>> %goto.target.bb2]
>>
>>   ...
>>
>>
>> With this, we don't change any values used by the callbr instructions,
>> and the return values are extracted correctly. This has the unsavory issue
>> of using stores and loads, but this may be the price we need to pay.
>>
>>
>> Thoughts?
>>
>>
>> The non-fallthrough blocks can have other predecessors, right? If so, I
>> imagine that you need to also do the following:
>>
> Good point!
>
>>  1. Store zero (or -1 or some other distinguishable value) into the %src
>> alloca in the entry block.
>>
> It should be a null value, as that's not a valid block address. Then
> again, if we use the "switch" instruction the default branch should
> suffice. We will probably want to reset the value after the callbr values
> are extracted.
>
>
> Actually, I'm not sure this works because the code in "<extract value from
> %x.bb1>" must be dominated by %x.bb1, and in this case it's not.
>
>
>  2. Store this same distinguishable value into the %src alloca after the
>> "value extraction" is performed.
>>
>>  3. Include this distinguishable value in the switch statement.
>>
>> While Clang does not normally insert phi nodes, in this case perhaps the
>> problem is self-contained enough for this to be reasonable. However, I'm
>> not sure that this is worthwhile. This is a performance feature generally,
>> and if the user really wants to use these outputs, are they going to want
>> the extra expense of the branches and jump tables and all of the rest of
>> it? Maybe in the common case the extraction blocks will be trivial and get
>> merged, but the default case will still be problematic?
>>
> There are ways to avoid the branches, et al, mostly by writing the code in
> the form of situations (1) and (2) by using lead-in blocks:
>
> true_branch:
>   goto body;
>
> false_branch:
>   goto body;
>
> body:
>
>   <use of common values here>
>
>
> One specific concern is that if it turns out that the
> non-fallthrough-block is not reachable except via callbrs, then you'd want
> the optimizer to be able to eliminate the checks for the "null value" case.
>
>  -Hal
>
>
>
> -bw
>
> --
> Hal Finkel
> Lead, Compiler Technology and Programming Languages
> Leadership Computing Facility
> Argonne National Laboratory
>
>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAEzuVAf8djBDPo0ye3o6PT8_WaMFawKw4UA1Xi9N-vJnZt1WWg%40mail.gmail.com.

--000000000000c042410596a11073
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I have a WIP implementation here:=C2=A0<a href=3D"https://=
reviews.llvm.org/D69868">https://reviews.llvm.org/D69868</a>. It only suppo=
rts use of returned values on the &quot;normal&quot; path. Use on the abnor=
mal path is very complex and may not be needed. If people clamor for it, th=
en we can always add it later after further review.<div><br></div><div>PTAL=
!</div><div>-bw</div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" =
class=3D"gmail_attr">On Tue, Jul 2, 2019 at 3:35 PM Finkel, Hal J. &lt;<a h=
ref=3D"mailto:hfinkel@anl.gov">hfinkel@anl.gov</a>&gt; wrote:<br></div><blo=
ckquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left=
:1px solid rgb(204,204,204);padding-left:1ex">



<div bgcolor=3D"#FFFFFF">
<div>On 7/2/19 12:42 AM, Bill Wendling wrote:<br>
</div>
<blockquote type=3D"cite">
<div dir=3D"ltr">
<div dir=3D"ltr">On Mon, Jul 1, 2019 at 6:25 PM Finkel, Hal J. &lt;<a href=
=3D"mailto:hfinkel@anl.gov" target=3D"_blank">hfinkel@anl.gov</a>&gt; wrote=
:<br>
</div>
<div class=3D"gmail_quote">
<blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-=
left:1px solid rgb(204,204,204);padding-left:1ex">
<div bgcolor=3D"#FFFFFF">
<p>On 7/1/19 1:38 PM, Bill Wendling via llvm-dev wrote:<br>
</p>
<blockquote type=3D"cite">
<div dir=3D"ltr">
<div dir=3D"ltr">On Fri, Jun 28, 2019 at 3:35 PM James Y Knight &lt;<a href=
=3D"mailto:jyknight@google.com" target=3D"_blank">jyknight@google.com</a>&g=
t; wrote:<br>
</div>
<div class=3D"gmail_quote">
<blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-=
left:1px solid rgb(204,204,204);padding-left:1ex">
<div dir=3D"ltr">
<div dir=3D"ltr">On Fri, Jun 28, 2019 at 5:53 PM Bill Wendling &lt;<a href=
=3D"mailto:isanbard@gmail.com" target=3D"_blank">isanbard@gmail.com</a>&gt;=
 wrote:<br>
</div>
<div class=3D"gmail_quote">
<blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-=
left:1px solid rgb(204,204,204);padding-left:1ex">
<div dir=3D"ltr">
<div dir=3D"ltr">On Fri, Jun 28, 2019 at 1:48 PM James Y Knight &lt;<a href=
=3D"mailto:jyknight@google.com" target=3D"_blank">jyknight@google.com</a>&g=
t; wrote:<br>
</div>
<div class=3D"gmail_quote">
<blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-=
left:1px solid rgb(204,204,204);padding-left:1ex">
<div dir=3D"ltr">
<div dir=3D"ltr">On Fri, Jun 28, 2019 at 3:00 PM Bill Wendling &lt;<a href=
=3D"mailto:isanbard@gmail.com" target=3D"_blank">isanbard@gmail.com</a>&gt;=
 wrote:<br>
</div>
<div class=3D"gmail_quote">
<blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-=
left:1px solid rgb(204,204,204);padding-left:1ex">
<div dir=3D"ltr">
<div dir=3D"ltr">On Thu, Jun 27, 2019 at 1:44 PM Bill Wendling &lt;<a href=
=3D"mailto:isanbard@gmail.com" target=3D"_blank">isanbard@gmail.com</a>&gt;=
 wrote:<br>
</div>
<div class=3D"gmail_quote">
<blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-=
left:1px solid rgb(204,204,204);padding-left:1ex">
<div dir=3D"ltr">
<div dir=3D"ltr">On Thu, Jun 27, 2019 at 1:29 PM James Y Knight &lt;<a href=
=3D"mailto:jyknight@google.com" target=3D"_blank">jyknight@google.com</a>&g=
t; wrote:<br>
</div>
<div class=3D"gmail_quote">
<blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-=
left:1px solid rgb(204,204,204);padding-left:1ex">
<div dir=3D"ltr">I think this is fine, except that it stops at the point wh=
ere things actually start to get interesting and tricky.
<div><br>
</div>
<div>How will you actually handle the flow of values from the callbr into t=
he error blocks? A callbr can specify requirements on where its outputs liv=
e. So, what if two callbr, in different branches of code, specify _differen=
t_ constraints for the same output,
 and list the same block as a possible error successor? How can the resulti=
ng phi be codegened?</div>
<div><br>
</div>
</div>
</blockquote>
<div>This is where I fall back on the statement about how &quot;the program=
mer knows what they&#39;re doing&quot;. Perhaps I&#39;m being too cavalier =
here? My concern, if you want to call it that, is that we don&#39;t be too =
restrictive on the new behavior. For example, the &quot;asm
 goto&quot; may set a register to an error value (made up on the spot; may =
not be a common use). But, if there&#39;s no real reason to have the value =
be valid on the abnormal path, then sure we can declare that it&#39;s not v=
alid on the abnormal path.</div>
<div><br>
</div>
</div>
</div>
</blockquote>
<div>I think I should explain my &quot;programmer knows what they&#39;re do=
ing&quot; statement a bit better. I&#39;m specifically referring to inline =
asm here. The more general &quot;callbr&quot; case may still need to be con=
sidered (see Reid&#39;s reply).</div>
<div><br>
</div>
<div>When a programmer uses inline asm, they&#39;re implicitly telling the =
compiler that they *do* know what they&#39;re doing=C2=A0=C2=A0(I know this=
 is common knowledge, but I wanted to reiterate it.). In particular, either=
 they need to reference an instruction not readily
 available from the compiler (e.g. &quot;cpuid&quot;) or the compiler isn&#=
39;t able to give them the needed performance in a critical section. I&#39;=
m extending this sentiment to callbr with output constraints. Let&#39;s tak=
e your example below and write it as &quot;normal&quot; asm statements
 one on each branch of an if-then-else (please ignore any syntax errors):</=
div>
<div><br>
</div>
<div>if:</div>
<div>=C2=A0 br i1 %cmp, label %true, label %false</div>
<div><br>
</div>
<div>true:</div>
<div>
<div>=C2=A0 %0 =3D call { i32, i32 } asm sideeffect &quot;poetry $0, $1&quo=
t;, &quot;=3D{r8},=3D{r9}&quot; ()<br>
</div>
<div>=C2=A0 br label %end</div>
<div><br>
</div>
<div>false:<br>
</div>
<div>=C2=A0 %1 =3D=C2=A0call { i32, i32 } asm sideeffect &quot;poetry2 $0, =
$1&quot;, &quot;=3D{r10},=3D{r11}&quot; ()</div>
<div>=C2=A0 br label %end</div>
<div><br>
</div>
<div>end:</div>
<div>=C2=A0 %vals =3D phi { i32, i32 } [ %0, %true ], [ %1, %false ]</div>
</div>
<div><br>
</div>
<div>How is this handled in codegen? Is it an error or does the back-end ha=
ndle it? Whatever&#39;s done today for &quot;normal&quot; inline asm is wha=
t I *think* should be the behavior for the inline asm callbr variant. If th=
is doesn&#39;t seem sensible (and I realize that I
 may be thinking of an &quot;in a perfect world&quot; scenario), then we&#3=
9;ll need to come up with a more sensible solution which may be to disallow=
 the values on the error block until we can think of a better way to handle=
 them.</div>
</div>
</div>
</blockquote>
<div><br>
</div>
<div>This example is no problem, because instructions can be emitted betwee=
n what&#39;s emitted by &quot;call asm&quot; and the end of the block (be i=
t a fallthrough, or a jump instruction. What gets emitted there is a move o=
f the output register to another location -- either
 a register or to the stack. And therefore at the beginning of the &quot;en=
d&quot; block, &quot;%vals&quot; is always in a consistent location, no mat=
ter how you got to that block.</div>
<div><br>
</div>
<div>But in the callbr case, there is not a location at which those moves c=
an be emitted, after the callbr, before the jump to &quot;error&quot;.</div=
>
</div>
</div>
</blockquote>
<div><br>
</div>
<div>I see what you mean. Let&#39;s say we create a pseudo-instruction (sim=
ilar to landingpad, et al) that needs to be lowered by the backend in a rea=
sonable manner. The EH stuff has an external process/library that performs =
the actual unwinding and which sets
 the values accordingly. We won&#39;t have this.</div>
</div>
</div>
</blockquote>
<div><br>
</div>
<div>=C2=A0</div>
<blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-=
left:1px solid rgb(204,204,204);padding-left:1ex">
<div dir=3D"ltr">
<div class=3D"gmail_quote">
<div>What we could do instead is split the edges and insert the copy-to-&lt=
;where ever&gt; statements there.
</div>
</div>
</div>
</blockquote>
<div><br>
</div>
<div>Exactly -- except that doing that is potentially an invalid transform,=
 because the address is being used as a value, not simply a jump target. Th=
e label list is just a list of _possible_ jump targets, changing those won&=
#39;t actually affect anything. You&#39;d
 instead need to change the blockaddress constant, but in the general case =
you don&#39;t know where that address came from -- (and it may therefore be=
 required that you have the same address for=C2=A0two separate callbr instr=
uctions).</div>
<div><br>
</div>
<div>I guess this kinda touches on some of the same issues as in the other =
discussion about the handling of the blockaddress=C2=A0in callbr and inlini=
ng, etc...</div>
<div><br>
</div>
<div>I wonder if we could put some validity restrictions on the IR structur=
e, rather than trying to fix things up after the fact by attempting to spli=
t blocks. E.g., we could state that it&#39;s invalid to have a phi which us=
es the value defined by a=C2=A0callbr, if
 it&#39;s conditioned on that same block as predecessor.=C2=A0 That is: it&=
#39;s valid to use _other_ values defined in the block ending in callbr, be=
cause they can be moved prior to the callbr. It&#39;s also valid to use the=
 value defined by the callbr in a phi conditioned
 on some other intermediate block as predecessor, because then any required=
 moves can happen in the intermediate block.</div>
<div><br>
</div>
<div>I believe such an IR restriction should be sufficient to make it possi=
ble to emit valid code from the IR in all cases, but I&#39;m a bit afraid o=
f how badly adding such odd edge-cases might screw up the rest of the compi=
ler and optimizer.</div>
</div>
</div>
</blockquote>
<div>
<div dir=3D"ltr">
<div class=3D"gmail_quote">
<p style=3D"font-variant-numeric:normal;font-variant-east-asian:normal;font=
-stretch:normal;font-size:12px;line-height:normal;font-family:Inconsolata;m=
argin:0px">
<span style=3D"font-variant-ligatures:no-common-ligatures;color:rgb(34,34,3=
4)"><br>
</span></p>
<p style=3D"font-variant-numeric:normal;font-variant-east-asian:normal;font=
-stretch:normal;line-height:normal;margin:0px">
<span style=3D"font-variant-ligatures:no-common-ligatures;color:rgb(34,34,3=
4)"><font face=3D"arial, sans-serif">I want to revisit this.=C2=A0</font></=
span>Here are the situations we&#39;re confronted with:</p>
<ol>
<li>The goto-target can be jumped to by 1 callbr instruction,</li><li>The g=
oto-target can be jumped to by N callbr instructions, which don&#39;t need =
a PHI node, and</li><li>The goto-target can be jumped to by N callbr instru=
ctions, which *do* need a PHI node.</li></ol>
<p style=3D"font-variant-numeric:normal;font-variant-east-asian:normal;font=
-stretch:normal;line-height:normal;margin:0px">
<span style=3D"font-variant-ligatures:no-common-ligatures;color:rgb(34,34,3=
4)"><font face=3D"arial, sans-serif">I&#39;m going to plug the instruction =
I created out of thin air a few emails back, but better explain (I&#39;m us=
ing an instruction instead of an intrinsic because
 we want that instruction to be right after all non-PHI instructions in the=
 goto-target block). I&#39;m _not_ suggesting we need this instruction. It&=
#39;s just for demonstration purposes.</font></span></p>
<p style=3D"font-variant-numeric:normal;font-variant-east-asian:normal;font=
-stretch:normal;line-height:normal;margin:0px">
<span style=3D"font-variant-ligatures:no-common-ligatures;color:rgb(34,34,3=
4)"><font face=3D"arial, sans-serif"><br>
</font></span></p>
<p style=3D"font-variant-numeric:normal;font-variant-east-asian:normal;font=
-stretch:normal;line-height:normal;margin:0px">
<span style=3D"font-variant-ligatures:no-common-ligatures;color:rgb(34,34,3=
4)"><font face=3D"arial, sans-serif">Situations (1) and (2) don&#39;t encou=
nter an problem. Any value used in the goto-target can be handled by insert=
ing the code to extract that value in the
 goto-target block:</font></span></p>
<p style=3D"font-variant-numeric:normal;font-variant-east-asian:normal;font=
-stretch:normal;line-height:normal;margin:0px">
<span style=3D"font-variant-ligatures:no-common-ligatures;color:rgb(34,34,3=
4)"><font face=3D"arial, sans-serif"><br>
</font></span></p>
<blockquote style=3D"margin:0px 0px 0px 40px;border:none;padding:0px">
<div class=3D"gmail_quote">
<div>
<div>
<div class=3D"gmail_quote">
<p style=3D"font-variant-numeric:normal;font-variant-east-asian:normal;font=
-stretch:normal;line-height:normal;font-family:Inconsolata;margin:0px">
<span style=3D"font-variant-ligatures:no-common-ligatures">bb1:</span></p>
<p style=3D"font-variant-numeric:normal;font-variant-east-asian:normal;font=
-stretch:normal;line-height:normal;font-family:Inconsolata;margin:0px">
<span style=3D"font-variant-ligatures:no-common-ligatures">=C2=A0 ...</span=
></p>
<p style=3D"font-variant-numeric:normal;font-variant-east-asian:normal;font=
-stretch:normal;line-height:normal;font-family:Inconsolata;margin:0px">
<span style=3D"font-variant-ligatures:no-common-ligatures;color:rgb(0,0,0)"=
>=C2=A0 %x.bb1 =3D callbr i32 asm sideeffect &quot;...&quot;, &quot;=3Dr,X&=
quot;(i32
</span><b style=3D"font-variant-ligatures:no-common-ligatures;color:rgb(0,0=
,0)">%x</b><span style=3D"font-variant-ligatures:no-common-ligatures;color:=
rgb(0,0,0)">, i8* blockaddress(@bar, %goto.target))</span><br>
</p>
</div>
</div>
</div>
</div>
<div class=3D"gmail_quote">
<div>
<div>
<div class=3D"gmail_quote">
<p style=3D"margin:0px;font-variant-numeric:normal;font-variant-east-asian:=
normal;font-stretch:normal;line-height:normal;font-family:Inconsolata;color=
:rgb(0,0,0)">
<span style=3D"font-variant-ligatures:no-common-ligatures"><span>=C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0</span>to label %fallthrough1
 [label %goto.target]</span></p>
</div>
</div>
</div>
</div>
<div class=3D"gmail_quote">
<div>
<div>
<div class=3D"gmail_quote">
<p style=3D"margin:0px;font-variant-numeric:normal;font-variant-east-asian:=
normal;font-stretch:normal;line-height:normal;font-family:Inconsolata;color=
:rgb(0,0,0)">
<span style=3D"font-variant-ligatures:no-common-ligatures"><br>
</span></p>
</div>
</div>
</div>
</div>
<div class=3D"gmail_quote">
<div>
<div>
<div class=3D"gmail_quote">
<p style=3D"margin:0px;font-variant-numeric:normal;font-variant-east-asian:=
normal;font-stretch:normal;line-height:normal;font-family:Inconsolata;color=
:rgb(0,0,0)">
<span style=3D"font-variant-ligatures:no-common-ligatures">fallthrough1:</s=
pan></p>
</div>
</div>
</div>
</div>
<div class=3D"gmail_quote">
<div>
<div>
<div class=3D"gmail_quote">
<p style=3D"margin:0px;font-variant-numeric:normal;font-variant-east-asian:=
normal;font-stretch:normal;line-height:normal;font-family:Inconsolata;color=
:rgb(0,0,0)">
<span style=3D"font-variant-ligatures:no-common-ligatures">=C2=A0 ...</span=
></p>
</div>
</div>
</div>
</div>
<div class=3D"gmail_quote">
<div>
<div>
<div class=3D"gmail_quote">
<p style=3D"margin:0px;font-variant-numeric:normal;font-variant-east-asian:=
normal;font-stretch:normal;line-height:normal;font-family:Inconsolata;color=
:rgb(0,0,0)">
<span style=3D"font-variant-ligatures:no-common-ligatures"><br>
</span></p>
</div>
</div>
</div>
</div>
<div class=3D"gmail_quote">
<div>
<div>
<div class=3D"gmail_quote">
<p style=3D"font-variant-numeric:normal;font-variant-east-asian:normal;font=
-stretch:normal;line-height:normal;font-family:Inconsolata;margin:0px">
<span style=3D"font-variant-ligatures:no-common-ligatures">bb2:</span></p>
<p style=3D"font-variant-numeric:normal;font-variant-east-asian:normal;font=
-stretch:normal;line-height:normal;font-family:Inconsolata;margin:0px">
<span style=3D"font-variant-ligatures:no-common-ligatures">=C2=A0 ...</span=
></p>
<p style=3D"font-variant-numeric:normal;font-variant-east-asian:normal;font=
-stretch:normal;line-height:normal;font-family:Inconsolata;margin:0px">
<span style=3D"font-variant-ligatures:no-common-ligatures;color:rgb(0,0,0)"=
>=C2=A0 %y.bb2 =3D callbr i32 asm sideeffect &quot;...&quot;, &quot;=3Dr,X&=
quot;(i32
</span><b style=3D"font-variant-ligatures:no-common-ligatures;color:rgb(0,0=
,0)">%y</b><span style=3D"font-variant-ligatures:no-common-ligatures;color:=
rgb(0,0,0)">, i8* blockaddress(@bar, %goto.target))</span><br>
</p>
</div>
</div>
</div>
</div>
<div class=3D"gmail_quote">
<div>
<div>
<div class=3D"gmail_quote">
<p style=3D"font-variant-numeric:normal;font-variant-east-asian:normal;font=
-stretch:normal;line-height:normal;font-family:Inconsolata;margin:0px;color=
:rgb(0,0,0)">
<span style=3D"font-variant-ligatures:no-common-ligatures"><span>=C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0</span>to label %fallthrough2
 [label %goto.target]</span></p>
</div>
</div>
</div>
</div>
<div class=3D"gmail_quote">
<div>
<div>
<div class=3D"gmail_quote">
<p style=3D"font-variant-numeric:normal;font-variant-east-asian:normal;font=
-stretch:normal;line-height:normal;font-family:Inconsolata;margin:0px;color=
:rgb(0,0,0)">
<span style=3D"font-variant-ligatures:no-common-ligatures"><br>
</span></p>
</div>
</div>
</div>
</div>
<div class=3D"gmail_quote">
<div>
<div>
<div class=3D"gmail_quote">
<p style=3D"font-variant-numeric:normal;font-variant-east-asian:normal;font=
-stretch:normal;line-height:normal;font-family:Inconsolata;margin:0px;color=
:rgb(0,0,0)">
<span style=3D"font-variant-ligatures:no-common-ligatures">fallthrough2:</s=
pan></p>
</div>
</div>
</div>
</div>
<div class=3D"gmail_quote">
<div>
<div>
<div class=3D"gmail_quote">
<p style=3D"font-variant-numeric:normal;font-variant-east-asian:normal;font=
-stretch:normal;line-height:normal;font-family:Inconsolata;margin:0px;color=
:rgb(0,0,0)">
<span style=3D"font-variant-ligatures:no-common-ligatures">=C2=A0 ...</span=
></p>
</div>
</div>
</div>
</div>
<div class=3D"gmail_quote">
<div>
<div>
<div class=3D"gmail_quote">
<p style=3D"font-variant-numeric:normal;font-variant-east-asian:normal;font=
-stretch:normal;line-height:normal;font-family:Inconsolata;margin:0px;color=
:rgb(0,0,0)">
<br>
</p>
</div>
</div>
</div>
</div>
<div class=3D"gmail_quote">
<div>
<div>
<div class=3D"gmail_quote">
<p style=3D"margin:0px;font-variant-numeric:normal;font-variant-east-asian:=
normal;font-stretch:normal;line-height:normal;font-family:Inconsolata;color=
:rgb(0,0,0)">
<span style=3D"font-variant-ligatures:no-common-ligatures">goto.target:</sp=
an></p>
</div>
</div>
</div>
</div>
</blockquote>
<blockquote style=3D"margin:0px 0px 0px 40px;border:none;padding:0px">
<div class=3D"gmail_quote">
<div>
<div>
<div class=3D"gmail_quote">
<p style=3D"margin:0px;font-variant-numeric:normal;font-variant-east-asian:=
normal;font-stretch:normal;line-height:normal;font-family:Inconsolata;color=
:rgb(0,0,0)">
=C2=A0 %x.goto =3D &lt;extract value from %x.bb1&gt;</p>
</div>
</div>
</div>
</div>
</blockquote>
<blockquote style=3D"margin:0px 0px 0px 40px;border:none;padding:0px">
<div class=3D"gmail_quote">
<div>
<div>
<div class=3D"gmail_quote">
<p style=3D"margin:0px;font-variant-numeric:normal;font-variant-east-asian:=
normal;font-stretch:normal;line-height:normal;font-family:Inconsolata;color=
:rgb(0,0,0)">
=C2=A0 %y.goto =3D &lt;extract value from %y.bb2&gt;</p>
</div>
</div>
</div>
</div>
</blockquote>
<blockquote style=3D"margin:0px 0px 0px 40px;border:none;padding:0px">
<div class=3D"gmail_quote">
<div>
<div>
<div class=3D"gmail_quote">
<p style=3D"margin:0px;font-variant-numeric:normal;font-variant-east-asian:=
normal;font-stretch:normal;line-height:normal;font-family:Inconsolata;color=
:rgb(0,0,0)">
=C2=A0 ... &lt;uses of %x.goto and %y.goto&gt; ...</p>
</div>
</div>
</div>
</div>
</blockquote>
<blockquote style=3D"margin:0px 0px 0px 40px;border:none;padding:0px">
<div class=3D"gmail_quote">
<div>
<div>
<div class=3D"gmail_quote">
<p style=3D"margin:0px;font-variant-numeric:normal;font-variant-east-asian:=
normal;font-stretch:normal;line-height:normal;font-family:Inconsolata;color=
:rgb(0,0,0)">
<br>
</p>
</div>
</div>
</div>
</div>
</blockquote>
<p style=3D"font-variant-numeric:normal;font-variant-east-asian:normal;font=
-stretch:normal;line-height:normal;margin:0px">
<span style=3D"font-variant-ligatures:no-common-ligatures;color:rgb(34,34,3=
4)"><font face=3D"arial, sans-serif">This leaves situation (3), which is fa=
r more complex as we&#39;ve seen. To reiterate, the issue here is that we n=
eed to extract the values returned by callbr.
 This would typically be done by using a PHI node, but llvm may want to spl=
it critical edges or push the calculation back to the predecessor block, wh=
ich won&#39;t work with the callbr asm, because it could branch out of the =
asm at any point thus skipping the extraction.
 So we can&#39;t use PHI nodes for these values. There are three classes of=
 solutions to this:</font></span></p>
<ol>
<li>Don&#39;t allow the values to be used in goto-targets, or</li><li>Allow=
 them, but with significant restrictions, or</li><li>Allow them without usi=
ng PHI nodes.</li></ol>
<div>Each has its benefits and drawbacks. As I&#39;ve stated before, I thin=
k that (1) is too restrictive, but if we can&#39;t come up with a good solu=
tion, it may be our only option. Solution (2) could be a good compromise. H=
owever, I want to propose a potential solution
 to (3).</div>
<div><br>
The core of my proposal is to replace the PHI node with code that will repl=
icate its behavior without code lowering trying to modify the CFG (at least=
 not in ways that may invalidate the asm). Here is example code:</div>
<p style=3D"font-variant-numeric:normal;font-variant-east-asian:normal;font=
-stretch:normal;line-height:normal;font-family:Inconsolata;margin:0px">
<span style=3D"font-variant-ligatures:no-common-ligatures;color:rgb(34,34,3=
4)"><br>
</span></p>
</div>
</div>
</div>
</div>
<blockquote style=3D"margin:0px 0px 0px 40px;border:none;padding:0px">
<div class=3D"gmail_quote">
<div>
<div>
<div class=3D"gmail_quote">
<p style=3D"font-variant-numeric:normal;font-variant-east-asian:normal;font=
-stretch:normal;line-height:normal;font-family:Inconsolata;margin:0px">
<span style=3D"font-variant-ligatures:no-common-ligatures;color:rgb(34,34,3=
4)">bb1:</span></p>
<p style=3D"font-variant-numeric:normal;font-variant-east-asian:normal;font=
-stretch:normal;line-height:normal;font-family:Inconsolata;margin:0px">
<span style=3D"font-variant-ligatures:no-common-ligatures;color:rgb(34,34,3=
4)">=C2=A0=C2=A0</span><span style=3D"font-variant-ligatures:no-common-liga=
tures">store i8* blockaddress(@bar, %bb1), i8** %src</span></p>
</div>
</div>
</div>
</div>
<div class=3D"gmail_quote">
<div>
<div>
<div class=3D"gmail_quote">
<p style=3D"margin:0px;font-style:normal;font-variant:normal;font-weight:no=
rmal;font-stretch:normal;line-height:normal;font-family:Inconsolata;color:r=
gb(0,0,0);background-color:rgb(255,255,255)">
<span style=3D"font-variant-ligatures:no-common-ligatures">=C2=A0 %x.bb1 =
=3D callbr i32 asm sideeffect &quot;...&quot;, &quot;=3Dr,X&quot;(i32 %x, i=
8* blockaddress(@bar, %goto.target))</span></p>
</div>
</div>
</div>
</div>
<div class=3D"gmail_quote">
<div>
<div>
<div class=3D"gmail_quote">
<p style=3D"margin:0px;font-variant-numeric:normal;font-variant-east-asian:=
normal;font-stretch:normal;line-height:normal;font-family:Inconsolata;color=
:rgb(0,0,0)">
<span style=3D"font-variant-ligatures:no-common-ligatures"><span>=C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0</span>to label %fallthrough1 [label
 %goto.target]</span></p>
</div>
</div>
</div>
</div>
<div class=3D"gmail_quote">
<div>
<div>
<div class=3D"gmail_quote">
<p style=3D"margin:0px;font-variant-numeric:normal;font-variant-east-asian:=
normal;font-stretch:normal;line-height:normal;font-family:Inconsolata;color=
:rgb(0,0,0)">
<span style=3D"font-variant-ligatures:no-common-ligatures"><br>
</span></p>
</div>
</div>
</div>
</div>
<div class=3D"gmail_quote">
<div>
<div>
<div class=3D"gmail_quote">
<p style=3D"margin:0px;font-variant-numeric:normal;font-variant-east-asian:=
normal;font-stretch:normal;line-height:normal;font-family:Inconsolata;color=
:rgb(0,0,0)">
<span style=3D"font-variant-ligatures:no-common-ligatures">fallthrough1:</s=
pan></p>
</div>
</div>
</div>
</div>
<div class=3D"gmail_quote">
<div>
<div>
<div class=3D"gmail_quote">
<p style=3D"margin:0px;font-variant-numeric:normal;font-variant-east-asian:=
normal;font-stretch:normal;line-height:normal;font-family:Inconsolata;color=
:rgb(0,0,0)">
<span style=3D"font-variant-ligatures:no-common-ligatures">=C2=A0 ...</span=
></p>
</div>
</div>
</div>
</div>
<div class=3D"gmail_quote">
<div>
<div>
<div class=3D"gmail_quote">
<p style=3D"margin:0px;font-variant-numeric:normal;font-variant-east-asian:=
normal;font-stretch:normal;line-height:normal;font-family:Inconsolata;color=
:rgb(0,0,0)">
<span style=3D"font-variant-ligatures:no-common-ligatures"><br>
</span></p>
</div>
</div>
</div>
</div>
<div class=3D"gmail_quote">
<div>
<div>
<div class=3D"gmail_quote">
<p style=3D"font-variant-numeric:normal;font-variant-east-asian:normal;font=
-stretch:normal;line-height:normal;font-family:Inconsolata;margin:0px">
<span style=3D"font-variant-ligatures:no-common-ligatures">bb2:</span></p>
<p style=3D"font-variant-numeric:normal;font-variant-east-asian:normal;font=
-stretch:normal;line-height:normal;font-family:Inconsolata;margin:0px">
<span style=3D"font-variant-ligatures:no-common-ligatures">=C2=A0=C2=A0</sp=
an><span style=3D"font-variant-ligatures:no-common-ligatures">store i8* blo=
ckaddress(@bar, %bb2), i8** %src</span></p>
</div>
</div>
</div>
</div>
<div class=3D"gmail_quote">
<div>
<div>
<div class=3D"gmail_quote">
<p style=3D"font-variant-numeric:normal;font-variant-east-asian:normal;font=
-stretch:normal;line-height:normal;font-family:Inconsolata;margin:0px;color=
:rgb(0,0,0)">
<span style=3D"font-variant-ligatures:no-common-ligatures">=C2=A0 %x.bb2 =
=3D callbr i32 asm sideeffect &quot;...&quot;, &quot;=3Dr,X&quot;(i32 %x, i=
8* blockaddress(@bar, %goto.target))</span></p>
</div>
</div>
</div>
</div>
<div class=3D"gmail_quote">
<div>
<div>
<div class=3D"gmail_quote">
<p style=3D"font-variant-numeric:normal;font-variant-east-asian:normal;font=
-stretch:normal;line-height:normal;font-family:Inconsolata;margin:0px;color=
:rgb(0,0,0)">
<span style=3D"font-variant-ligatures:no-common-ligatures"><span>=C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0</span>to label %fallthrough2 [label
 %goto.target]</span></p>
</div>
</div>
</div>
</div>
<div class=3D"gmail_quote">
<div>
<div>
<div class=3D"gmail_quote">
<p style=3D"font-variant-numeric:normal;font-variant-east-asian:normal;font=
-stretch:normal;line-height:normal;font-family:Inconsolata;margin:0px;color=
:rgb(0,0,0)">
<span style=3D"font-variant-ligatures:no-common-ligatures"><br>
</span></p>
</div>
</div>
</div>
</div>
<div class=3D"gmail_quote">
<div>
<div>
<div class=3D"gmail_quote">
<p style=3D"font-variant-numeric:normal;font-variant-east-asian:normal;font=
-stretch:normal;line-height:normal;font-family:Inconsolata;margin:0px;color=
:rgb(0,0,0)">
<span style=3D"font-variant-ligatures:no-common-ligatures">fallthrough2:</s=
pan></p>
</div>
</div>
</div>
</div>
<div class=3D"gmail_quote">
<div>
<div>
<div class=3D"gmail_quote">
<p style=3D"font-variant-numeric:normal;font-variant-east-asian:normal;font=
-stretch:normal;line-height:normal;font-family:Inconsolata;margin:0px;color=
:rgb(0,0,0)">
<span style=3D"font-variant-ligatures:no-common-ligatures">=C2=A0 ...</span=
></p>
</div>
</div>
</div>
</div>
<div class=3D"gmail_quote">
<div>
<div>
<div class=3D"gmail_quote">
<p style=3D"font-variant-numeric:normal;font-variant-east-asian:normal;font=
-stretch:normal;line-height:normal;font-family:Inconsolata;margin:0px;color=
:rgb(0,0,0)">
<br>
</p>
</div>
</div>
</div>
</div>
<div class=3D"gmail_quote">
<div>
<div>
<div class=3D"gmail_quote">
<p style=3D"margin:0px;font-variant-numeric:normal;font-variant-east-asian:=
normal;font-stretch:normal;line-height:normal;font-family:Inconsolata;color=
:rgb(0,0,0)">
<span style=3D"font-variant-ligatures:no-common-ligatures">goto.target:</sp=
an></p>
</div>
</div>
</div>
</div>
<div class=3D"gmail_quote">
<div>
<div>
<div class=3D"gmail_quote">
<p style=3D"margin:0px;font-variant-numeric:normal;font-variant-east-asian:=
normal;font-stretch:normal;line-height:normal;font-family:Inconsolata;color=
:rgb(0,0,0)">
=C2=A0 %x1 =3D indirectval i8** %src, i32 [%x.bb1, %bb1], [%x.bb2, %bb2]</p=
>
</div>
</div>
</div>
</div>
</blockquote>
<blockquote style=3D"margin:0px 0px 0px 40px;border:none;padding:0px">
<div class=3D"gmail_quote">
<div>
<div>
<div class=3D"gmail_quote">
<p style=3D"margin:0px;font-variant-numeric:normal;font-variant-east-asian:=
normal;font-stretch:normal;line-height:normal;font-family:Inconsolata;color=
:rgb(0,0,0)">
=C2=A0 &lt;extract values from %x1&gt;</p>
</div>
</div>
</div>
</div>
</blockquote>
<blockquote style=3D"margin:0px 0px 0px 40px;border:none;padding:0px">
<div class=3D"gmail_quote">
<div>
<div>
<div class=3D"gmail_quote">
<p style=3D"margin:0px;font-variant-numeric:normal;font-variant-east-asian:=
normal;font-stretch:normal;line-height:normal;font-family:Inconsolata;color=
:rgb(0,0,0)">
=C2=A0 ...</p>
</div>
</div>
</div>
</div>
</blockquote>
<font color=3D"#000000">
<div style=3D"font-family:Inconsolata"><br>
</div>
</font>
<div><font color=3D"#000000"><font face=3D"arial,
                        sans-serif">This can be lowered to this:</font><br>
</font>
<div class=3D"gmail_quote">
<div><br>
</div>
</div>
<blockquote style=3D"margin:0px 0px 0px 40px;border:none;padding:0px">
<div class=3D"gmail_quote">
<div>
<p style=3D"font-variant-numeric:normal;font-variant-east-asian:normal;font=
-stretch:normal;line-height:normal;font-family:Inconsolata;margin:0px">
<span style=3D"font-variant-ligatures:no-common-ligatures">bb1:</span></p>
</div>
</div>
<div class=3D"gmail_quote">
<div>
<div class=3D"gmail_quote">
<div>
<div>
<div class=3D"gmail_quote">
<p style=3D"font-variant-numeric:normal;font-variant-east-asian:normal;font=
-stretch:normal;line-height:normal;font-family:Inconsolata;margin:0px">
<span style=3D"font-variant-ligatures:no-common-ligatures">=C2=A0=C2=A0</sp=
an><span style=3D"font-variant-ligatures:no-common-ligatures">store i8* blo=
ckaddress(@bar, %bb1), i8** %src</span></p>
</div>
</div>
</div>
</div>
<p style=3D"font-variant-numeric:normal;font-variant-east-asian:normal;font=
-stretch:normal;line-height:normal;font-family:Inconsolata;margin:0px">
<span style=3D"font-variant-ligatures:no-common-ligatures;color:rgb(0,0,0)"=
>=C2=A0 %x.bb1 =3D callbr i32 asm sideeffect &quot;...&quot;, &quot;=3Dr,X&=
quot;(i32 %x, i8* blockaddress(@bar, %error))</span><br>
</p>
</div>
</div>
<div class=3D"gmail_quote">
<div>
<p style=3D"font-variant-numeric:normal;font-variant-east-asian:normal;font=
-stretch:normal;line-height:normal;font-family:Inconsolata;margin:0px;color=
:rgb(0,0,0)">
<span style=3D"font-variant-ligatures:no-common-ligatures"><span>=C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0</span>to label %fallthrough1 [label
 %goto.target]</span></p>
</div>
</div>
<div class=3D"gmail_quote">
<div>
<p style=3D"font-variant-numeric:normal;font-variant-east-asian:normal;font=
-stretch:normal;line-height:normal;font-family:Inconsolata;margin:0px;color=
:rgb(0,0,0)">
<span style=3D"font-variant-ligatures:no-common-ligatures"><br>
</span></p>
</div>
</div>
<div class=3D"gmail_quote">
<div>
<p style=3D"font-variant-numeric:normal;font-variant-east-asian:normal;font=
-stretch:normal;line-height:normal;font-family:Inconsolata;margin:0px;color=
:rgb(0,0,0)">
<span style=3D"font-variant-ligatures:no-common-ligatures">fallthrough1:</s=
pan></p>
</div>
</div>
<div class=3D"gmail_quote">
<div>
<p style=3D"font-variant-numeric:normal;font-variant-east-asian:normal;font=
-stretch:normal;line-height:normal;font-family:Inconsolata;margin:0px;color=
:rgb(0,0,0)">
<span style=3D"font-variant-ligatures:no-common-ligatures">=C2=A0 ...</span=
></p>
</div>
</div>
<div class=3D"gmail_quote">
<div>
<p style=3D"font-variant-numeric:normal;font-variant-east-asian:normal;font=
-stretch:normal;line-height:normal;font-family:Inconsolata;margin:0px;color=
:rgb(0,0,0)">
<span style=3D"font-variant-ligatures:no-common-ligatures"><br>
</span></p>
</div>
</div>
<div class=3D"gmail_quote">
<div>
<p style=3D"font-variant-numeric:normal;font-variant-east-asian:normal;font=
-stretch:normal;line-height:normal;font-family:Inconsolata;margin:0px">
<span style=3D"font-variant-ligatures:no-common-ligatures">bb2:</span></p>
</div>
</div>
<div class=3D"gmail_quote">
<div class=3D"gmail_quote">
<div>
<div>
<div class=3D"gmail_quote">
<p style=3D"font-variant-numeric:normal;font-variant-east-asian:normal;font=
-stretch:normal;line-height:normal;font-family:Inconsolata;margin:0px">
<span style=3D"font-variant-ligatures:no-common-ligatures">=C2=A0=C2=A0</sp=
an><span style=3D"font-variant-ligatures:no-common-ligatures">store i8* blo=
ckaddress(@bar, %bb2), i8** %src</span></p>
</div>
</div>
</div>
</div>
</div>
<div class=3D"gmail_quote">
<div>
<p style=3D"font-variant-numeric:normal;font-variant-east-asian:normal;font=
-stretch:normal;line-height:normal;font-family:Inconsolata;margin:0px;color=
:rgb(0,0,0)">
<span style=3D"font-variant-ligatures:no-common-ligatures">=C2=A0 %x.bb2 =
=3D callbr i32 asm sideeffect &quot;...&quot;, &quot;=3Dr,X&quot;(i32 %x, i=
8* blockaddress(@bar, %error))</span></p>
</div>
</div>
<div class=3D"gmail_quote">
<div>
<p style=3D"font-variant-numeric:normal;font-variant-east-asian:normal;font=
-stretch:normal;line-height:normal;font-family:Inconsolata;margin:0px;color=
:rgb(0,0,0)">
<span style=3D"font-variant-ligatures:no-common-ligatures"><span>=C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0</span>to label %fallthrough2 [label
 %goto.target]</span></p>
</div>
</div>
<div class=3D"gmail_quote">
<div>
<p style=3D"font-variant-numeric:normal;font-variant-east-asian:normal;font=
-stretch:normal;line-height:normal;font-family:Inconsolata;margin:0px;color=
:rgb(0,0,0)">
<span style=3D"font-variant-ligatures:no-common-ligatures"><br>
</span></p>
</div>
</div>
<div class=3D"gmail_quote">
<div>
<p style=3D"font-variant-numeric:normal;font-variant-east-asian:normal;font=
-stretch:normal;line-height:normal;font-family:Inconsolata;margin:0px;color=
:rgb(0,0,0)">
<span style=3D"font-variant-ligatures:no-common-ligatures">fallthrough2:</s=
pan></p>
</div>
</div>
<div class=3D"gmail_quote">
<div>
<p style=3D"font-variant-numeric:normal;font-variant-east-asian:normal;font=
-stretch:normal;line-height:normal;font-family:Inconsolata;margin:0px;color=
:rgb(0,0,0)">
<span style=3D"font-variant-ligatures:no-common-ligatures">=C2=A0 ...</span=
></p>
</div>
</div>
<div class=3D"gmail_quote">
<div>
<p style=3D"font-variant-numeric:normal;font-variant-east-asian:normal;font=
-stretch:normal;line-height:normal;font-family:Inconsolata;margin:0px;color=
:rgb(0,0,0)">
<br>
</p>
</div>
</div>
<div class=3D"gmail_quote">
<div>
<p style=3D"font-variant-numeric:normal;font-variant-east-asian:normal;font=
-stretch:normal;line-height:normal;font-family:Inconsolata;margin:0px;color=
:rgb(0,0,0)">
<span style=3D"font-variant-ligatures:no-common-ligatures">goto.target:</sp=
an></p>
</div>
</div>
<div class=3D"gmail_quote">
<div>
<p style=3D"font-variant-numeric:normal;font-variant-east-asian:normal;font=
-stretch:normal;line-height:normal;font-family:Inconsolata;margin:0px;color=
:rgb(0,0,0)">
<span style=3D"font-variant-ligatures:no-common-ligatures">=C2=A0 %src1 =3D=
 load i8**, i8***=C2=A0</span><span style=3D"font-variant-ligatures:no-comm=
on-ligatures">@src</span><br>
</p>
</div>
</div>
</blockquote>
<blockquote style=3D"margin:0px 0px 0px 40px;border:none;padding:0px">
<div class=3D"gmail_quote">
<div>
<p style=3D"font-variant-numeric:normal;font-variant-east-asian:normal;font=
-stretch:normal;line-height:normal;font-family:Inconsolata;margin:0px;color=
:rgb(0,0,0)">
=C2=A0 %<a href=3D"http://src.bb" target=3D"_blank">src.bb</a> =3D load i8*=
, i8** %src1</p>
</div>
</div>
</blockquote>
<blockquote style=3D"margin:0px 0px 0px 40px;border:none;padding:0px">
<div class=3D"gmail_quote">
<div>
<p style=3D"font-variant-numeric:normal;font-variant-east-asian:normal;font=
-stretch:normal;line-height:normal;font-family:Inconsolata;margin:0px;color=
:rgb(0,0,0)">
<span style=3D"font-variant-ligatures:no-common-ligatures">=C2=A0 switch i6=
4 %<a href=3D"http://src.bb" target=3D"_blank">src.bb</a>, label %goto.targ=
et.body [ ; or if-then-else
 blocks</span></p>
</div>
</div>
<div class=3D"gmail_quote">
<div>
<p style=3D"font-variant-numeric:normal;font-variant-east-asian:normal;font=
-stretch:normal;line-height:normal;font-family:Inconsolata;margin:0px;color=
:rgb(0,0,0)">
<span style=3D"font-variant-ligatures:no-common-ligatures">=C2=A0 =C2=A0 =
=C2=A0 i64 ptrtoint i8* blockaddress(@bar, %bb1) to i64, label %goto.target=
.bb1</span></p>
</div>
</div>
<div class=3D"gmail_quote">
<div>
<p style=3D"font-variant-numeric:normal;font-variant-east-asian:normal;font=
-stretch:normal;line-height:normal;font-family:Inconsolata;margin:0px;color=
:rgb(0,0,0)">
<span style=3D"font-variant-ligatures:no-common-ligatures">=C2=A0 =C2=A0 =
=C2=A0 i64 ptrtoint i8* blockaddress(@bar, %bb2) to i64, label %goto.target=
.bb2</span><span style=3D"font-variant-ligatures:no-common-ligatures">=C2=
=A0
 =C2=A0</span></p>
</div>
</div>
<div class=3D"gmail_quote">
<div>
<p style=3D"font-variant-numeric:normal;font-variant-east-asian:normal;font=
-stretch:normal;line-height:normal;font-family:Inconsolata;margin:0px;color=
:rgb(0,0,0)">
<span style=3D"font-variant-ligatures:no-common-ligatures">=C2=A0 ]</span><=
/p>
</div>
</div>
<div class=3D"gmail_quote">
<div>
<p style=3D"font-variant-numeric:normal;font-variant-east-asian:normal;font=
-stretch:normal;line-height:normal;font-family:Inconsolata;margin:0px;color=
:rgb(0,0,0)">
<span style=3D"font-variant-ligatures:no-common-ligatures"><br>
</span></p>
</div>
</div>
<div class=3D"gmail_quote">
<div>
<p style=3D"font-variant-numeric:normal;font-variant-east-asian:normal;font=
-stretch:normal;line-height:normal;font-family:Inconsolata;margin:0px;color=
:rgb(0,0,0)">
<span style=3D"font-variant-ligatures:no-common-ligatures">goto.target.bb1:=
</span></p>
</div>
</div>
<div class=3D"gmail_quote">
<div>
<p style=3D"font-variant-numeric:normal;font-variant-east-asian:normal;font=
-stretch:normal;line-height:normal;font-family:Inconsolata;margin:0px;color=
:rgb(0,0,0)">
=C2=A0 %x1 =3D &lt;extract value from %x.bb1&gt;</p>
</div>
</div>
<div class=3D"gmail_quote">
<div>
<p style=3D"font-variant-numeric:normal;font-variant-east-asian:normal;font=
-stretch:normal;line-height:normal;font-family:Inconsolata;margin:0px;color=
:rgb(0,0,0)">
=C2=A0 br label %goto.target.body</p>
</div>
</div>
<div class=3D"gmail_quote">
<div>
<p style=3D"font-variant-numeric:normal;font-variant-east-asian:normal;font=
-stretch:normal;line-height:normal;font-family:Inconsolata;margin:0px;color=
:rgb(0,0,0)">
<br>
</p>
</div>
</div>
<div class=3D"gmail_quote">
<div>
<p style=3D"font-variant-numeric:normal;font-variant-east-asian:normal;font=
-stretch:normal;line-height:normal;font-family:Inconsolata;margin:0px;color=
:rgb(0,0,0)">
goto.target.bb2:</p>
</div>
</div>
<div class=3D"gmail_quote">
<div>
<p style=3D"font-variant-numeric:normal;font-variant-east-asian:normal;font=
-stretch:normal;line-height:normal;font-family:Inconsolata;margin:0px;color=
:rgb(0,0,0)">
=C2=A0 %x2 =3D &lt;extract value from %x.bb2&gt;</p>
</div>
</div>
<div class=3D"gmail_quote">
<div>
<p style=3D"font-variant-numeric:normal;font-variant-east-asian:normal;font=
-stretch:normal;line-height:normal;font-family:Inconsolata;margin:0px;color=
:rgb(0,0,0)">
=C2=A0 br label %goto.target.body</p>
</div>
</div>
<div class=3D"gmail_quote">
<div>
<p style=3D"font-variant-numeric:normal;font-variant-east-asian:normal;font=
-stretch:normal;line-height:normal;font-family:Inconsolata;margin:0px;color=
:rgb(0,0,0)">
<br>
</p>
</div>
</div>
<div class=3D"gmail_quote">
<div>
<p style=3D"font-variant-numeric:normal;font-variant-east-asian:normal;font=
-stretch:normal;line-height:normal;font-family:Inconsolata;margin:0px;color=
:rgb(0,0,0)">
goto.target.body:</p>
</div>
</div>
<div class=3D"gmail_quote">
<div>
<p style=3D"font-variant-numeric:normal;font-variant-east-asian:normal;font=
-stretch:normal;line-height:normal;font-family:Inconsolata;margin:0px;color=
:rgb(0,0,0)">
=C2=A0 %x.merge =3D phi i64 [%x1, label %goto.target.bb1], [%x1, label %got=
o.target.bb2]</p>
</div>
</div>
<div class=3D"gmail_quote">
<div>
<p style=3D"font-variant-numeric:normal;font-variant-east-asian:normal;font=
-stretch:normal;line-height:normal;font-family:Inconsolata;margin:0px;color=
:rgb(0,0,0)">
=C2=A0 ...</p>
</div>
</div>
</blockquote>
<div class=3D"gmail_quote">
<div>
<p style=3D"font-variant-numeric:normal;font-variant-east-asian:normal;font=
-stretch:normal;line-height:normal;font-family:Inconsolata;margin:0px;color=
:rgb(0,0,0)">
<br>
</p>
<p style=3D"font-variant-numeric:normal;font-variant-east-asian:normal;font=
-stretch:normal;line-height:normal;margin:0px;color:rgb(0,0,0)">
<font face=3D"arial, sans-serif">With this, we don&#39;t change any values =
used by the callbr instructions, and the return values are extracted correc=
tly. This has the unsavory issue of using stores and loads, but this may be=
 the price we need to pay.</font></p>
<p style=3D"font-variant-numeric:normal;font-variant-east-asian:normal;font=
-stretch:normal;line-height:normal;margin:0px;color:rgb(0,0,0)">
<font face=3D"arial, sans-serif"><br>
</font></p>
<p style=3D"font-variant-numeric:normal;font-variant-east-asian:normal;font=
-stretch:normal;line-height:normal;margin:0px;color:rgb(0,0,0)">
<font face=3D"arial, sans-serif">Thoughts?</font></p>
</div>
</div>
</div>
</div>
</blockquote>
<p><br>
</p>
<p>The non-fallthrough blocks can have other predecessors, right? If so, I =
imagine that you need to also do the following:</p>
</div>
</blockquote>
<div>Good point!=C2=A0<br>
</div>
<blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-=
left:1px solid rgb(204,204,204);padding-left:1ex">
<div bgcolor=3D"#FFFFFF">
<p>=C2=A01. Store zero (or -1 or some other distinguishable value) into the=
 %src alloca in the entry block.</p>
</div>
</blockquote>
<div>It should be a null value, as that&#39;s not a valid block address. Th=
en again, if we use the &quot;switch&quot; instruction the default branch s=
hould suffice. We will probably want to reset the value after the callbr va=
lues are extracted.</div>
</div>
</div>
</blockquote>
<p><br>
</p>
<p>Actually, I&#39;m not sure this works because the code in &quot;&lt;extr=
act value from %x.bb1&gt;&quot; must be dominated by %x.bb1, and in this ca=
se it&#39;s not.<br>
</p>
<p><br>
</p>
<blockquote type=3D"cite">
<div dir=3D"ltr">
<div class=3D"gmail_quote">
<blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-=
left:1px solid rgb(204,204,204);padding-left:1ex">
<div bgcolor=3D"#FFFFFF">
<p>=C2=A02. Store this same distinguishable value into the %src alloca afte=
r the &quot;value extraction&quot; is performed.</p>
<p>=C2=A03. Include this distinguishable value in the switch statement.</p>
<p>While Clang does not normally insert phi nodes, in this case perhaps the=
 problem is self-contained enough for this to be reasonable. However, I&#39=
;m not sure that this is worthwhile. This is a performance feature generall=
y, and if the user really wants to use
 these outputs, are they going to want the extra expense of the branches an=
d jump tables and all of the rest of it? Maybe in the common case the extra=
ction blocks will be trivial and get merged, but the default case will stil=
l be problematic?</p>
</div>
</blockquote>
<div>There are ways to avoid the branches, et al, mostly by writing the cod=
e in the form of situations (1) and (2) by using lead-in blocks:</div>
<div><br>
</div>
</div>
<blockquote style=3D"margin:0px 0px 0px 40px;border:none;padding:0px">
<div class=3D"gmail_quote">
<div><span style=3D"font-family:Inconsolata;font-variant-ligatures:no-commo=
n-ligatures">true_branch:</span></div>
</div>
<div class=3D"gmail_quote">
<div><span style=3D"font-variant-ligatures:no-common-ligatures;font-family:=
Inconsolata">=C2=A0 goto body;</span></div>
</div>
<div class=3D"gmail_quote">
<div><span style=3D"font-variant-ligatures:no-common-ligatures;font-family:=
Inconsolata"><br>
</span></div>
</div>
<div class=3D"gmail_quote">
<div><span style=3D"font-variant-ligatures:no-common-ligatures;font-family:=
Inconsolata">false_branch:</span></div>
</div>
<div class=3D"gmail_quote">
<div><span style=3D"font-variant-ligatures:no-common-ligatures;font-family:=
Inconsolata">=C2=A0 goto body;</span></div>
</div>
<div class=3D"gmail_quote">
<div><span style=3D"font-variant-ligatures:no-common-ligatures;font-family:=
Inconsolata"><br>
</span></div>
</div>
<div class=3D"gmail_quote">
<div><span style=3D"font-variant-ligatures:no-common-ligatures;font-family:=
Inconsolata">body:</span></div>
</div>
</blockquote>
<blockquote style=3D"margin:0px 0px 0px 40px;border:none;padding:0px">
<div class=3D"gmail_quote">
<div><span style=3D"font-variant-ligatures:no-common-ligatures;font-family:=
Inconsolata">=C2=A0 &lt;use of common values here&gt;</span></div>
</div>
</blockquote>
</div>
</blockquote>
<p><br>
</p>
<p>One specific concern is that if it turns out that the non-fallthrough-bl=
ock is not reachable except via callbrs, then you&#39;d want the optimizer =
to be able to eliminate the checks for the &quot;null value&quot; case.</p>
<p>=C2=A0-Hal<br>
</p>
<p><br>
</p>
<blockquote type=3D"cite">
<div dir=3D"ltr">
<div class=3D"gmail_quote">
<div><br>
</div>
<div>-bw=C2=A0</div>
</div>
</div>
</blockquote>
<pre cols=3D"72">--=20
Hal Finkel
Lead, Compiler Technology and Programming Languages
Leadership Computing Facility
Argonne National Laboratory</pre>
</div>

</blockquote></div>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;Clang Built Linux&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:clang-built-linux+unsubscribe@googlegroups.com">c=
lang-built-linux+unsubscribe@googlegroups.com</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/clang-built-linux/CAEzuVAf8djBDPo0ye3o6PT8_WaMFawKw4UA1Xi9N-vJnZ=
t1WWg%40mail.gmail.com?utm_medium=3Demail&utm_source=3Dfooter">https://grou=
ps.google.com/d/msgid/clang-built-linux/CAEzuVAf8djBDPo0ye3o6PT8_WaMFawKw4U=
A1Xi9N-vJnZt1WWg%40mail.gmail.com</a>.<br />

--000000000000c042410596a11073--
