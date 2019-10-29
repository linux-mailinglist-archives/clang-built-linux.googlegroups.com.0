Return-Path: <clang-built-linux+bncBC2ORX645YPRBNH74HWQKGQERUDBOEQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa40.google.com (mail-vk1-xa40.google.com [IPv6:2607:f8b0:4864:20::a40])
	by mail.lfdr.de (Postfix) with ESMTPS id 5863FE8EF6
	for <lists+clang-built-linux@lfdr.de>; Tue, 29 Oct 2019 19:06:45 +0100 (CET)
Received: by mail-vk1-xa40.google.com with SMTP id a188sf6333093vkc.7
        for <lists+clang-built-linux@lfdr.de>; Tue, 29 Oct 2019 11:06:45 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1572372404; cv=pass;
        d=google.com; s=arc-20160816;
        b=KjZpo3yEF6EoaX0wr7XXLzPMtAW8Faa7DR6K8TD+PC0qc9cHt2NfYSL1kxLnwlZqcU
         HCoZTtaxtY8jRYyggeuqhv+A1KKDQ0sslwpZBWXMTm1+tW6Amtkq8x0CDPCDckYSVDP7
         mTMhTMG8q5A+FIZ2PzMjHu5soqAN8bhq8Tc74kGpszJ7+oXBLyZ+CTm3O4f9INpQs53o
         bZNSl2+lCKVz0DpLXyeqkWWCcU/jQdEzJNGuDvvz82xpHtpUvNns6j1f/fk2HO4wfmyn
         xuW2wNuYVuCheiRaDBXOitjfwDMLACgphVaTvYv9n1WO4WtswvsCtknduJ83bgDNBt2o
         BFLA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=S35uyNWv1OjAKVebIZu0RgaC+mS6D9u0vWQP6/HF4GU=;
        b=BkUc+yL0n6em3VAsKaU/hYgM1vBBy3v2uSKGlmk38M7WTzu63L7fIXmNcwx+N7IiBk
         5BkTiG6zxKQjXJO36JWl2y1b5kGrbW8et1Esq0vokdKu/aqp+ytPc8Gy09ibFmLP/FtE
         nC5LGrcL8jjXAZP2XdAvEPjfxr7ooJqobAPwfD0MTcPfFLiI1mK0c3jeMizrlPOOi3z2
         buuW9g0z1/vI8xl74c1bihABybRBh8FJM/3Ic5zyC23uUtA/fBeJl18S8RO2PqvZDnZs
         Ptbw6wHcD2Wu6lO2j1X6zDVkX/t+lU+LZUfyyJyS1qmLej8L8qHsoKjUXBDFkWmXnhAq
         Ea/w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=jnGz5ZBc;
       spf=pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::e43 as permitted sender) smtp.mailfrom=samitolvanen@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=S35uyNWv1OjAKVebIZu0RgaC+mS6D9u0vWQP6/HF4GU=;
        b=K9wBsBbWmRbu+DcDSfwgNGw/jNdyXzx7MAGtSoUTDLKWp25FRF9mDSMNHCwTgUHrNK
         dWcdvihRisuagANmw3wBn0HFopkVxO6MORyeNMVryQ9JFK6E/EtYAjeO2sR/8eGxxuxX
         RhoelK4Z9MxxNIV+0QlPPj0PfqBEuB61eKwqk+PjEWzQfQ61jLrcP2pO+N19QfvMBCiK
         XpoEchv9UvXmxiYUnx83k32VGxk/qMIgyrZ8DTQGpFAKoeSGoLaW+v3WT+6p8+PqDp6G
         fPvxifn2I4JU5BrjsrWB51guxWHwDRhuBNRpaUfg6GvW83/rmcS2QrSR8h1M+3xj12xQ
         AkrA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=S35uyNWv1OjAKVebIZu0RgaC+mS6D9u0vWQP6/HF4GU=;
        b=ohXjO4JSMpRlIfbR/NQacshkjqNYNuqbQ0wCskUCnjdT6B0gCIB2vAkNWrjSojUnS2
         Xvs70yq3T3w6z8h6cObGWD+nwPBL/MffeBmOuMCzkPB4njdXU8kHcffEfsmNQHCLiQlG
         02hjhegtNUqY4MrlvY/rfRZJYPyFxPC5sPyXQebxvezgk653luQ+LEHNyHuYqiHeYw42
         pTFLC1PLRBeCG+ox3dcojcpfr9WS7C2QT6X4eSc+H4cw1AD63kHac6yuRSyxiRv1X6gG
         vL6crjTe2MW326XW21+YyStcN/PxLP6eRgNbNIZctHawJN63j47dmI5CD6W91I4aYMRh
         SObA==
X-Gm-Message-State: APjAAAVzhwMUSFIyy17argHnDvywngOTZUT4yIddQUSLO4XYy/ClgDJq
	W5cQvoQD1MyHw0Ja/4J7Uq8=
X-Google-Smtp-Source: APXvYqxYbAFuf7L17OEHxBSwRKybWmgjBWwN4W+KhwPburPwtSb+qjV3sm/e3iozS4dwXn7b7vu14w==
X-Received: by 2002:a1f:c846:: with SMTP id y67mr18269vkf.70.1572372404184;
        Tue, 29 Oct 2019 11:06:44 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac5:c392:: with SMTP id s18ls214167vkk.15.gmail; Tue, 29 Oct
 2019 11:06:43 -0700 (PDT)
X-Received: by 2002:a1f:d906:: with SMTP id q6mr12366713vkg.25.1572372403758;
        Tue, 29 Oct 2019 11:06:43 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1572372403; cv=none;
        d=google.com; s=arc-20160816;
        b=vGohoiipJrMCwFQnu3gYgpLiXipnBLFPNPUCb02R8x413TWfaho2DiuJsj1ZvxH2YK
         lYx70FRwAHbj+n9qP7kTs4eyy83A5kj96imbxa45Em6VNagBrb2HCf6b7S6IrzASJ4yU
         lXyMWHmX6+aF0jXiZSWD0XRfjm6zmWrq0r5HpkSHkl3ddq6Q8JGkSSEfKeBTRUnHrihT
         NUrlvpYRbUHAh8jAdwBAbray9luVyPp6bEdXpzfkudYVcnQB0pH9xghvLrNG6ApWdrUn
         3NBgasFq32o/6+rH7sKNPmmO4t9lJzitu4pGQAl7yv+0E9cLYBzImILZDCDCNM7euiqn
         ZLhA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=mFw8F15ZQ3Xbg7xoMFqwMMbaKM4Z7mDJFWlKx02r/fU=;
        b=LmFRZ/AN0QTUxL254nRtv+CL2+hbMVMJyLECtm7C9zwG7/U/IYb8gW0fEb+BcwleaK
         M5e1CFn+6eU5V1SzlJJ3BlFV6J/TIVkBIgVR8WsF1RWdrffQjwgY4AxbvroXO12g3MrO
         Ncs6w1700u7QfFuzB3rBlzADxEZXYSjDJTXnbq6B79GQhMKN6zpvMUVpqM+oa1V0x5cE
         yiL1gOJw3R2xACnbBkoLt7dko+2KFDkxOI5YI5u2je1Byf9a32Vfu9pZ1s7VDFZVtygl
         PeygIDxaIFD+TWh3IO3I7qwkZUp76T2bUTaopVlHcAQKHQB9HBAqcBrVR+oL6tXIu10Z
         Ww/g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=jnGz5ZBc;
       spf=pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::e43 as permitted sender) smtp.mailfrom=samitolvanen@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-vs1-xe43.google.com (mail-vs1-xe43.google.com. [2607:f8b0:4864:20::e43])
        by gmr-mx.google.com with ESMTPS id y14si1049392uaa.0.2019.10.29.11.06.43
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 29 Oct 2019 11:06:43 -0700 (PDT)
Received-SPF: pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::e43 as permitted sender) client-ip=2607:f8b0:4864:20::e43;
Received: by mail-vs1-xe43.google.com with SMTP id q21so9368203vsg.3
        for <clang-built-linux@googlegroups.com>; Tue, 29 Oct 2019 11:06:43 -0700 (PDT)
X-Received: by 2002:a67:fe02:: with SMTP id l2mr2281254vsr.112.1572372402875;
 Tue, 29 Oct 2019 11:06:42 -0700 (PDT)
MIME-Version: 1.0
References: <20191018161033.261971-1-samitolvanen@google.com>
 <20191024225132.13410-1-samitolvanen@google.com> <20191024225132.13410-6-samitolvanen@google.com>
 <20191025105643.GD40270@lakrids.cambridge.arm.com> <CABCJKuc+XiDRdqfvjwCF7y=1wX3QO0MCUpeu4Gdcz91+nmnEAQ@mail.gmail.com>
 <20191028163532.GA52213@lakrids.cambridge.arm.com> <201910281250.25FBA8533@keescook>
In-Reply-To: <201910281250.25FBA8533@keescook>
From: "'Sami Tolvanen' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Tue, 29 Oct 2019 11:06:31 -0700
Message-ID: <CABCJKufubiN9JdOTGUSRgmmc_0bW3SRCnk9404+zmor4kh9ZCQ@mail.gmail.com>
Subject: Re: [PATCH v2 05/17] add support for Clang's Shadow Call Stack (SCS)
To: Kees Cook <keescook@chromium.org>
Cc: Mark Rutland <mark.rutland@arm.com>, Will Deacon <will@kernel.org>, 
	Catalin Marinas <catalin.marinas@arm.com>, Steven Rostedt <rostedt@goodmis.org>, 
	Masami Hiramatsu <mhiramat@kernel.org>, Ard Biesheuvel <ard.biesheuvel@linaro.org>, 
	Dave Martin <Dave.Martin@arm.com>, Laura Abbott <labbott@redhat.com>, 
	Nick Desaulniers <ndesaulniers@google.com>, Jann Horn <jannh@google.com>, 
	Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>, 
	Masahiro Yamada <yamada.masahiro@socionext.com>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Kernel Hardening <kernel-hardening@lists.openwall.com>, 
	linux-arm-kernel <linux-arm-kernel@lists.infradead.org>, LKML <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: samitolvanen@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=jnGz5ZBc;       spf=pass
 (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::e43
 as permitted sender) smtp.mailfrom=samitolvanen@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Sami Tolvanen <samitolvanen@google.com>
Reply-To: Sami Tolvanen <samitolvanen@google.com>
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

On Mon, Oct 28, 2019 at 12:57 PM Kees Cook <keescook@chromium.org> wrote:
> On Mon, Oct 28, 2019 at 04:35:33PM +0000, Mark Rutland wrote:
> > On Fri, Oct 25, 2019 at 01:49:21PM -0700, Sami Tolvanen wrote:
> > > To keep the address of the currently active shadow stack out of
> > > memory, the arm64 implementation clears this field when it loads x18
> > > and saves the current value before a context switch. The generic code
> > > doesn't expect the arch code to necessarily do so, but does allow it.
> > > This requires us to use __scs_base() when accessing the base pointer
> > > and to reset it in idle tasks before they're reused, hence
> > > scs_task_reset().
> >
> > Ok. That'd be worth a comment somewhere, since it adds a number of
> > things which would otherwise be unnecessary.
> >
> > IIUC this assumes an adversary who knows the address of a task's
> > thread_info, and has an arbitrary-read (to extract the SCS base from
> > thead_info) and an arbitrary-write (to modify the SCS area).
> >
> > Assuming that's the case, I don't think this buys much. If said
> > adversary controls two userspace threads A and B, they only need to wait
> > until A is context-switched out or in userspace, and read A's SCS base
> > using B.
> >
> > Given that, I'd rather always store the SCS base in the thread_info, and
> > simplify the rest of the code manipulating it.
>
> I'd like to keep this as-is since it provides a temporal protection.
> Having arbitrary kernel read and write at arbitrary time is a very
> powerful attack primitive, and is, IMO, not very common. Many attacks
> tend to be chains of bugs that give attackers narrow visibility in to the
> kernel at specific moments. I would say this design is more about stopping
> "current" from dumping thread_info (as there are many more opportunities
> for current to see its own thread_info compared to arbitrary addresses
> or another task's thread_info). As such, I think it's a reasonable
> precaution to take.

I'm not sure if always storing the base address in thread_info would
simplify the code that much. We could remove __scs_base() and
scs_task_reset(), which are both trivial, and drop a few instructions
in the arch-specific code that clear the field. I do agree that a
comment or two would help understand what's going on here though.

Sami

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CABCJKufubiN9JdOTGUSRgmmc_0bW3SRCnk9404%2Bzmor4kh9ZCQ%40mail.gmail.com.
