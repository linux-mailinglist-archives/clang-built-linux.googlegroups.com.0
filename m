Return-Path: <clang-built-linux+bncBCTJDYM3XAGBBYOSYXVQKGQESDAPTXI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vs1-xe38.google.com (mail-vs1-xe38.google.com [IPv6:2607:f8b0:4864:20::e38])
	by mail.lfdr.de (Postfix) with ESMTPS id 2FD74AACA8
	for <lists+clang-built-linux@lfdr.de>; Thu,  5 Sep 2019 22:00:35 +0200 (CEST)
Received: by mail-vs1-xe38.google.com with SMTP id s8sf509652vso.9
        for <lists+clang-built-linux@lfdr.de>; Thu, 05 Sep 2019 13:00:35 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1567713634; cv=pass;
        d=google.com; s=arc-20160816;
        b=GSmoDDcjepjnaUreru7kNEXFu5MXjiQ9UJ2k6A2ea0Y6vz/RiTGkUK/GY1j0S0JWeU
         ChVv/LeJtHCK7UuGV7URbflhDVOzMWrxFwl21QUu1i9vptxxNzSqxugaVUeQ714nNHJO
         WPPN5w/MlEJvaQHlVOpXlvhvkj+iX9t67W1RfTk6grBmezIb7C+Igd7gKlFpjOIRzDsM
         AAaA+JR9UMROQi0EGvl6JphFF6bK3yG2gr9y9xkgXkKd+vgEUNVqmReFXdTXVbfbEkWq
         IVB+/SjvJoAKyKhkEyVt7ufMiOPRIJV/w1kaysVr3UWWFxYBMe1RRg3IbxZQDNrkmQ0R
         aO0A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=ogibcTeNmWN+o6xZqf1EyimAmBDnqyUbipdLFfliIL4=;
        b=uztNAuUFsQrNGaFWix+idlMmTZv11aJqyRUPd77KUfXgmaBdQ4cmrr6jExE6BkpqXy
         Rl8/9K/Ge6SMxP1KIY8s3zguaQfbPCNUfDK8HyIeRKBOTfYdyCFZcmKXu7gRutzF7ElC
         B/4kMYKO1cpH+GirTIOQJuEOVa2HZl7jUAuenoRYFzybv1Q0b1USJtC/7AgEc3yO2SoD
         9VgzbHY7PuQLeQv8Mu3k3asfr8O5quyH5WDF5cFrGbSANO34E2NbnEMr1sg+WAUdUHbN
         8TsG2zBSxmev/Qq1mNhCIS/VPVzscAQzBIKRE9J8jx5nQVjjxhGL1h/+ExL5M+UI4igS
         1JUw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@lonelycoder.com header.s=google header.b=JbiJASYb;
       spf=pass (google.com: domain of andoma@lonelycoder.com designates 2607:f8b0:4864:20::343 as permitted sender) smtp.mailfrom=andoma@lonelycoder.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ogibcTeNmWN+o6xZqf1EyimAmBDnqyUbipdLFfliIL4=;
        b=KTgfAhUwK6IrWGfHIRb7lxN0G5uLrxukyrVBKyVwgaqVOGD3hoiritCjiJBoB7SCGK
         BYERYDYCb+mb8YNN6H1mD9Jq4CrP54S/xKJEPfHWJ9c3MwPzszfDAahESHL4m6TLczrr
         aNPGnOKo7kdFYe5k/q95v+scLJ9i2+w9k+KsTZnyalPXa2POl3Xgwpij9aJtg42q7s2I
         J3/rMlB957DHi+BtBdDnhvYMml3EwVbjYbE2okcyXJFfvkweUEysR0y3aIo5oBsnl8aI
         2+R0RRq2mvTY7LipdLH3nSws+CyRValjMkQI+U8YzRyHX0PVY6BpVs1P1lTvvoLZbwJX
         MB+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ogibcTeNmWN+o6xZqf1EyimAmBDnqyUbipdLFfliIL4=;
        b=LXD5uDc6+8JPPUPXmakXIa7nLnVYjxmUifP+K3lwUx/ELuEAEn9Rw+wzcoUnwyK/JZ
         K+OBYvBqxPeGUYoqzWYFGMFiaiEonw+Lp3st80a/8SqjfI3MDXicl4Wz3Yp5F2ct8loD
         CUxAej0ysYZq3GKjOxwWEPzd0ejN47MbD/NKhXfW0Xf/TDw7AaOolSrKd3RGzyMZBl+H
         cT+be0CrcPziOz6PoxLlupGXXg8f8YoZyJ4HdngTBv8mpLjI8K2AsTaEIYnjBcRWI3ZP
         yYKghDgPz7U2RP3F1ppVq8is22nkR2QkQlfGvQXzItWLTZoBrUzJI4uPTNrja4sUpToS
         r+Jg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAW5s+u98k0grjqubafZaZRWIoVKe4racvdkmTLbmEDh8/IDennV
	Ey6uFvK2RENU8YAtAOxSzW8=
X-Google-Smtp-Source: APXvYqzc/6Db/RLE69Qe3+GjYhe8994LV2x8iyfcRuT7Ko3heHXoaFZITErF110D8LwHlrnfxqaKMg==
X-Received: by 2002:a67:5f07:: with SMTP id t7mr2984420vsb.234.1567713634052;
        Thu, 05 Sep 2019 13:00:34 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:6957:: with SMTP id e84ls127915vsc.4.gmail; Thu, 05 Sep
 2019 13:00:33 -0700 (PDT)
X-Received: by 2002:a67:c996:: with SMTP id y22mr3220538vsk.28.1567713633596;
        Thu, 05 Sep 2019 13:00:33 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1567713633; cv=none;
        d=google.com; s=arc-20160816;
        b=Wv0TGHkpyltaA/HRb1u1WBPeIk41206nMQ/bSSLnHwqCJmySyAtARmVNMlH0drlqLk
         PwXZb398rBSGpDJ/18Kwqtfv8nBnqHKsQAjiU9H4elTfDjAzTXPoFnE04lJPKmDKyORv
         uHz9UlhesGIlZKWlMFK20yBJGUTtgJxqC+NQ5PX4Lb+OFmZygd0ZrqSaKas15T0+QcGk
         Eoj62weDl4ojQf0euX9ZKh5+yRviXKeTye+aitV920VMvcX2dm5yAIKFpDo1fRiw7+kr
         Ass89AbM8q/PwYg4nSyVkZRu6Sy4MTr0xdotL14CPa18vxNr3Jd0kupoomgWh1TClPQP
         DwBA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=kYbfxjyep6baFu31BTNCvbKxo9XSMomaphW0a6NF1fA=;
        b=DO77HgVrtrWwjVTOmMQVCIB9oBL4PQKxmvV45vY6yEd2xD1lDwRYYsVNudJVJ4i6qo
         B0H3iriX254KMhKhJQxaT4mucn7Oq3ZQz9JcXJFskkjQopKoWm/intcGfxhHnHubo832
         wDLGpJrHFRbQ2qUKVzuctWdV/hgcVNZ4/ksZxKZdLFhXrGlskxjXVMviNGBTYoP0VsuC
         3+5wYIi2dwS6aHqxexeEie2MQ7SABINbDs+VD3AT3/YCeY7J2MBWu8KfwWpE9b9Kz1wv
         FMhEHI2nCCN6LOL36Jf+eZ2LjJJa/xMIlyiHUYS6Cd8l4y+Kpis7SWF6BzBSnr4Eww6Y
         O0BA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@lonelycoder.com header.s=google header.b=JbiJASYb;
       spf=pass (google.com: domain of andoma@lonelycoder.com designates 2607:f8b0:4864:20::343 as permitted sender) smtp.mailfrom=andoma@lonelycoder.com
Received: from mail-ot1-x343.google.com (mail-ot1-x343.google.com. [2607:f8b0:4864:20::343])
        by gmr-mx.google.com with ESMTPS id v22si186131vsm.0.2019.09.05.13.00.33
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 05 Sep 2019 13:00:33 -0700 (PDT)
Received-SPF: pass (google.com: domain of andoma@lonelycoder.com designates 2607:f8b0:4864:20::343 as permitted sender) client-ip=2607:f8b0:4864:20::343;
Received: by mail-ot1-x343.google.com with SMTP id 21so3468396otj.11
        for <clang-built-linux@googlegroups.com>; Thu, 05 Sep 2019 13:00:33 -0700 (PDT)
X-Received: by 2002:a9d:21a6:: with SMTP id s35mr4468457otb.77.1567713631363;
 Thu, 05 Sep 2019 13:00:31 -0700 (PDT)
MIME-Version: 1.0
References: <20190904214505.GA15093@swahl-linux> <CAKwvOdnX3qVq1wGovViyGJSnySKzCATU4SU_ASsL-9XfDZ8+Eg@mail.gmail.com>
 <CAObFT-RqSa+8re=jLfM-=yyFH38dz89jRjrwGjnhHhGszKxXmQ@mail.gmail.com> <CAKwvOdk00-v=yT3C3NfN=-FJWLF+9sAYXm_LeFXo+DBZ-vKSxw@mail.gmail.com>
In-Reply-To: <CAKwvOdk00-v=yT3C3NfN=-FJWLF+9sAYXm_LeFXo+DBZ-vKSxw@mail.gmail.com>
From: Andreas Smas <andreas@lonelycoder.com>
Date: Thu, 5 Sep 2019 13:00:20 -0700
Message-ID: <CAObFT-Tj=Ye9NbKQjvBP1YtjOKSTMi77i2rc9LFTaLxDwvbLWw@mail.gmail.com>
Subject: Re: [PATCH 1/1] x86/purgatory: Change compiler flags to avoid
 relocation errors.
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Steve Wahl <steve.wahl@hpe.com>, Thomas Gleixner <tglx@linutronix.de>, 
	LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Vaibhav Rustagi <vaibhavrustagi@google.com>, russ.anderson@hpe.com, dimitri.sivanich@hpe.com, 
	mike.travis@hpe.com, Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>, 
	"H. Peter Anvin" <hpa@zytor.com>, 
	"maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <x86@kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: andreas@lonelycoder.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@lonelycoder.com header.s=google header.b=JbiJASYb;       spf=pass
 (google.com: domain of andoma@lonelycoder.com designates 2607:f8b0:4864:20::343
 as permitted sender) smtp.mailfrom=andoma@lonelycoder.com
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

On Thu, Sep 5, 2019 at 11:20 AM Nick Desaulniers
<ndesaulniers@google.com> wrote:
>
> On Wed, Sep 4, 2019 at 10:34 PM Andreas Smas <andreas@lonelycoder.com> wrote:
> >
> > On Wed, Sep 4, 2019 at 3:19 PM Nick Desaulniers <ndesaulniers@google.com> wrote:
> > > Thanks for confirming the fix.  While it sounds like -mcmodel=large is
> > > the only necessary change, I don't object to -ffreestanding of
> > > -fno-zero-initialized-in-bss being readded, especially since I think
> > > what you've done with PURGATORY_CFLAGS_REMOVE is more concise.
> >
> > Without -ffreestanding this results in undefined symbols (as before this patch)
>
> Thanks for the report and sorry for the breakage.  Can you test
> Steve's patch and send your tested by tag?  Steve will likely respin
> the final patch today with Boris' feedback, so now is the time to get
> on the train.
>
> >
> > $ readelf -a arch/x86/purgatory/purgatory.ro|grep UND
> >      0: 0000000000000000     0 NOTYPE  LOCAL  DEFAULT  UND
>
> ^ what's that? A <strikethrough>horse</strikethrough> symbol with no name?

No idea TBH. Not enough of an ELF-expert to explain that. It's also there with
the -ffreestanding -patch (when kexec() works for me again)
so it doesn't seem to cause any harm.

>
> >     51: 0000000000000000     0 NOTYPE  GLOBAL DEFAULT  UND __stack_chk_fail
>
> ^ so I would have expected the stackprotector changes in my and Steve
> commits to prevent compiler emission of that runtime-implemented
> symbol.  ie. that `-ffreestanding` affects that and not removing the
> stackprotector flags begs another question.  Without `-ffreestanding`
> and `-fstack-protector` (or `-fstack-protector-strong`), why would the
> compiler emit references to __stack_chk_fail?  Which .o file that
> composes the .ro file did we fail to remove the `-fstack-protector*`
> flag from?  `-ffreestanding` seems to be covering that up.

So, I'm using

$ gcc --version
gcc (Ubuntu 7.4.0-1ubuntu1~18.04.1) 7.4.0

I think the problem is that stock ubuntu gcc defaults to -fstack-protector.
I haven't figured out where to check how/where ubuntu configures gcc except
an ancient discussion here: https://wiki.ubuntu.com/GccSsp.

Both -fno-stack-protector or -ffreestanding fixes the issue. I'm not sure
which would be preferred? -ffreestanding sounds a bit better to me though,
as that's really what we are dealing with here.

So,

Tested-by: Andreas Smas <andreas@lonelycoder.com>


FWIW, one of the offending functions is sha256_transform() where the u32 W[64];
triggers insert of a stack guard variable. (since -fstack-protector is
default on)


End of sha256_transform()

        /* clear any sensitive info... */
        a = b = c = d = e = f = g = h = t1 = t2 = 0;
        memset(W, 0, 64 * sizeof(u32));
}
    1aab:       48 8b 84 24 00 01 00    mov    0x100(%rsp),%rax
    1ab2:       00
    1ab3:       65 48 33 04 25 28 00    xor    %gs:0x28,%rax
    1aba:       00 00
        state[0] += a; state[1] += b; state[2] += c; state[3] += d;
    1abc:       44 89 37                mov    %r14d,(%rdi)
    1abf:       44 89 47 0c             mov    %r8d,0xc(%rdi)
        state[4] += e; state[5] += f; state[6] += g; state[7] += h;
    1ac3:       44 89 6f 10             mov    %r13d,0x10(%rdi)
    1ac7:       89 4f 14                mov    %ecx,0x14(%rdi)
    1aca:       89 5f 18                mov    %ebx,0x18(%rdi)
}
    1acd:       75 12                   jne    1ae1 <sha256_transform+0x1ae1>
    1acf:       48 81 c4 08 01 00 00    add    $0x108,%rsp
    1ad6:       5b                      pop    %rbx
    1ad7:       5d                      pop    %rbp
    1ad8:       41 5c                   pop    %r12
    1ada:       41 5d                   pop    %r13
    1adc:       41 5e                   pop    %r14
    1ade:       41 5f                   pop    %r15
    1ae0:       c3                      retq
    1ae1:       e8 00 00 00 00          callq  1ae6 <sha256_transform+0x1ae6>


.rela.text:

1ae2  001100000002 R_X86_64_PC32     __stack_chk_fail - 4


Same thing with this latest patch (ie, -ffreestanding)

        /* clear any sensitive info... */
        a = b = c = d = e = f = g = h = t1 = t2 = 0;
        memset(W, 0, 64 * sizeof(u32));
    1aa2:       ba 00 01 00 00          mov    $0x100,%edx
        state[4] += e; state[5] += f; state[6] += g; state[7] += h;
    1aa7:       89 47 1c                mov    %eax,0x1c(%rdi)
        state[0] += a; state[1] += b; state[2] += c; state[3] += d;
    1aaa:       44 89 47 0c             mov    %r8d,0xc(%rdi)
        memset(W, 0, 64 * sizeof(u32));
    1aae:       31 f6                   xor    %esi,%esi
        state[4] += e; state[5] += f; state[6] += g; state[7] += h;
    1ab0:       89 4f 14                mov    %ecx,0x14(%rdi)
        memset(W, 0, 64 * sizeof(u32));
    1ab3:       48 b8 00 00 00 00 00    movabs $0x0,%rax    <- &memset()
    1aba:       00 00 00
    1abd:       48 89 e7                mov    %rsp,%rdi
    1ac0:       ff d0                   callq  *%rax
}
    1ac2:       48 81 c4 00 01 00 00    add    $0x100,%rsp
    1ac9:       5b                      pop    %rbx
    1aca:       5d                      pop    %rbp
    1acb:       41 5c                   pop    %r12
    1acd:       41 5d                   pop    %r13
    1acf:       41 5e                   pop    %r14
    1ad1:       41 5f                   pop    %r15
    1ad3:       c3                      retq


1ab5  001100000001 R_X86_64_64           memset + 0

It's interesting / odd (?) that the memset() is eliminated when
stack-guard is enabled.
I've no idea why this happens. But I suppose that's a separate thing.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAObFT-Tj%3DYe9NbKQjvBP1YtjOKSTMi77i2rc9LFTaLxDwvbLWw%40mail.gmail.com.
