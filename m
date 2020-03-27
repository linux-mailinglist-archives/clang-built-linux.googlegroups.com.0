Return-Path: <clang-built-linux+bncBCS7XUWOUULBB4W57DZQKGQEPQC427I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43d.google.com (mail-pf1-x43d.google.com [IPv6:2607:f8b0:4864:20::43d])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C2EA195B98
	for <lists+clang-built-linux@lfdr.de>; Fri, 27 Mar 2020 17:51:00 +0100 (CET)
Received: by mail-pf1-x43d.google.com with SMTP id 71sf8759136pfu.1
        for <lists+clang-built-linux@lfdr.de>; Fri, 27 Mar 2020 09:51:00 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1585327859; cv=pass;
        d=google.com; s=arc-20160816;
        b=JYxi+Q+G8CCFgCZ+NCA347UAIe5Ec3cRfj2UgIm5Ms+lEhFKiUfhm93nhvPcZruiPU
         sY/fqweSy3uf9KQqhttvU2i8XYI8nLrJYXJwShHzr16xFq8sJxaoTUmUi6pxxgOj69yE
         e17Uw8G2zb2uK99LFv700PZoPPkYUlHW7Mz2NDC/XJ+SxOG82rbYJRldtg8xYjEBfwke
         /Qo9IdUjx7Ow2+gcPLOvPvsIr7dwYXL8oqEyfGNLgjmajpy1+CDxwXKa56G+8I3mZ0UV
         epAPYTtLyLA9xyMkjyyiRfli/jeBMkJ2HXrovSU8eRbHzJ0z0+fg4hAH+u8hshRXtAkO
         +w/A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=12K1fv6g64vzBm7OlNBR/p67VgYlgz1o9APH6pphoEY=;
        b=obHu55iE58+uOhGGBL4vpgw0iODH/XpFUeZiXtYR/c4f1rv10uF8R1fwtVKEntFBca
         RtSdYMuuAXKDInicQLWjAaLWxVhytUKJAH1DCTjE8CerDjCqXF153BsqSY0f+2YOTgif
         ft9eFA7h8Fq2F/pzkwpkFGFTWykdKnKj72peknyUsHMn/MO/tKFzS1ovtla6L2qrrR4Z
         86q/lgCxGvuPpzdFu8KVmbaibAqVQq6lfZbZtpkcUW00EbJZ4D3cMjeg5JByganMLVzj
         /+bPutYYI+dkSsjSdzj+fQmcqMGSVSYjSGoqXRRTTX6+V7VRTzi5Sn2wjZyBYAlgZxje
         GqiA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=YxmyRPWu;
       spf=pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::441 as permitted sender) smtp.mailfrom=maskray@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=12K1fv6g64vzBm7OlNBR/p67VgYlgz1o9APH6pphoEY=;
        b=BfcZFeg29IFE0/8YCH5gB+0Y/luXSnU7KwdzJ8yFUxYa+2Bnn7J9nfWd7HznsOOMpA
         4p8pSIcXlPyHQ2inO0jruxn0XE9aNYPqvwl8ehxZgylfLWnnFUpfj44rxmXwSr9gT9+q
         hbqi5dgL8LJSgmdFVKu+q7JGaBklFnlTKgx2KcOCBSHRqoL1mOMNZcxd88KgA+G0NIbw
         NDSeEedR+eLVaQX+VR5QhKraXgYuK+P4jycCEnFJ/YvZplGLNc1VE9aGBnhS4otNsSUR
         KxNo2o74+uYLzyb2CO9oMb8c6D/QJCsR5RcMqgZ+QWC0D3fsi6cbUPjzutCOatqjjCSr
         t7nw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=12K1fv6g64vzBm7OlNBR/p67VgYlgz1o9APH6pphoEY=;
        b=FWfYPhe7hWDeeSaWV3qG8TSxJj2+PgWylqeouPk5SOnroj+0rsI4VlRWM05wSVXHeC
         FZXCf9G0g9EPPdNbMfIHG/+rmiPcgOEBDJMU8FxZ6Gt8LaF3MaVASlqE9+InxB+V6Ci6
         fa1dZCxDYe8uGHLczGq87bGX6G61VWWG0YbtgIiptDEhULXytyTqjAEvAfTRbyxRn6Ax
         TS/33exIzBCSn3nONz1JMtqznfIuPwbJ7dxbQsxsH7iCUd3oXZrneIbiyGVHInoKt/Ax
         UY1UhJgDgk7ADM3cYu43A6GriASkEYIpBIXLj6BH3gUjDKX3x7Jso1jJjKZkZGElr63G
         ct6Q==
X-Gm-Message-State: ANhLgQ2Fh4CTVBgrGrM62iGUyuclJ2CKgrrEgs5RZf9XYo6wlO5YLPa7
	0Jaf8rsEtNj93VQW7f+AZHA=
X-Google-Smtp-Source: ADFU+vsnFQ9f1g538FX06BwWoNgPjUJ6TBCxYQejK2w0kDV6YeYSVST2KBr5eBQpk0u+CsZ5sFM2TQ==
X-Received: by 2002:a17:902:fe87:: with SMTP id x7mr9416plm.320.1585327858946;
        Fri, 27 Mar 2020 09:50:58 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:b410:: with SMTP id h16ls6383536pfn.7.gmail; Fri, 27 Mar
 2020 09:50:58 -0700 (PDT)
X-Received: by 2002:a63:67c7:: with SMTP id b190mr178387pgc.289.1585327858484;
        Fri, 27 Mar 2020 09:50:58 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585327858; cv=none;
        d=google.com; s=arc-20160816;
        b=cWDRlj/klPzIOPxKPBiqghSO/9dq5yMxE+cXnz79oI3knfbLPWu9IrKcg3gXUHFzkO
         yP3nblv5Q9rORgGzDCQNF+g3CwxoNvqQ4XNDvjXbuo0V474CJHJbhKWUJnw3Ne4npNR2
         fmy1P+xyTXq7nthNIKEpL0UKwJns9fKZyh+wHxd4XJwhczvbgnNjECezfXAhn7z9WIdt
         P+vbol76fWT5lx/oDELUI61tBd91T4AQflh+gIhA1wvWRC7tgknNhbcyRzhBpzuAafs2
         WyihIn6LdyAcfEPRFo49Rj1M7UQkc4MFny0kDLo2Rz+YOfhdswBfZR2hgV+FEh1nTC6/
         uH4Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=FbILndaH9wxcdro/tpy0ww74A376uNHQB+w1NC7sjnM=;
        b=p7ypw3rhMOePNwItH28rNxYo8NThnds63CwWqLaLAF55jZWMbWRr+YFjGqaFGjElAo
         77/HOkKLY9rYh3eAOBvCSi6PUV2lxKM3GJa44Hc7if8SVCxkE5wngK8MI1W0tMF3q7FZ
         VcjdcGciIovhN30hxATjHTrYRmlXwdkzWdzxDuQ+n3yQwcV5uCF99JpiZzIbSu+/QnyE
         3gsG4Kf2buujMWm0C+4TdxwB3D5WKCjf7nSay1G9TqVs7Nec6MZtefn9fLnTsIVgMh5L
         oz7qb1upi5+Xf54CI9kNtCMMgUr+30L/dO5RhBRF/VwDhyrDkNl6GCh9VLdZ6JU+Rkud
         wNpw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=YxmyRPWu;
       spf=pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::441 as permitted sender) smtp.mailfrom=maskray@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x441.google.com (mail-pf1-x441.google.com. [2607:f8b0:4864:20::441])
        by gmr-mx.google.com with ESMTPS id s63si354463pjb.0.2020.03.27.09.50.58
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 27 Mar 2020 09:50:58 -0700 (PDT)
Received-SPF: pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::441 as permitted sender) client-ip=2607:f8b0:4864:20::441;
Received: by mail-pf1-x441.google.com with SMTP id h72so4774370pfe.4
        for <clang-built-linux@googlegroups.com>; Fri, 27 Mar 2020 09:50:58 -0700 (PDT)
X-Received: by 2002:a63:1e4f:: with SMTP id p15mr243620pgm.28.1585327857879;
        Fri, 27 Mar 2020 09:50:57 -0700 (PDT)
Received: from google.com ([2620:15c:2ce:0:9efe:9f1:9267:2b27])
        by smtp.gmail.com with ESMTPSA id e26sm4498196pfj.61.2020.03.27.09.50.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 27 Mar 2020 09:50:57 -0700 (PDT)
Date: Fri, 27 Mar 2020 09:50:54 -0700
From: "'Fangrui Song' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Segher Boessenkool <segher@kernel.crashing.org>
Cc: linuxppc-dev@lists.ozlabs.org, Alan Modra <amodra@gmail.com>,
	Joel Stanley <joel@jms.id.au>,
	Michael Ellerman <mpe@ellerman.id.au>,
	Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux@googlegroups.com
Subject: Re: [PATCH v2] powerpc/boot: Delete unneeded .globl _zimage_start
Message-ID: <20200327165054.67pzzjwtg3dc7hx2@google.com>
References: <20200325164257.170229-1-maskray@google.com>
 <20200326221625.GA22482@gate.crashing.org>
 <20200326222612.zbbiyi75emq6npzn@google.com>
 <20200327152428.GF22482@gate.crashing.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Disposition: inline
In-Reply-To: <20200327152428.GF22482@gate.crashing.org>
X-Original-Sender: maskray@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=YxmyRPWu;       spf=pass
 (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::441
 as permitted sender) smtp.mailfrom=maskray@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Fangrui Song <maskray@google.com>
Reply-To: Fangrui Song <maskray@google.com>
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

On 2020-03-27, Segher Boessenkool wrote:
>On Thu, Mar 26, 2020 at 03:26:12PM -0700, Fangrui Song wrote:
>> On 2020-03-26, Segher Boessenkool wrote:
>> >On Wed, Mar 25, 2020 at 09:42:57AM -0700, Fangrui Song wrote:
>> >>.globl sets the symbol binding to STB_GLOBAL while .weak sets the
>> >>binding to STB_WEAK. GNU as let .weak override .globl since binutils-gdb
>> >>5ca547dc2399a0a5d9f20626d4bf5547c3ccfddd (1996). Clang integrated
>> >>assembler let the last win but it may error in the future.
>> >
>> >GNU AS works for more than just ELF.  The way the assembler language
>> >is defined, it is not .weak overriding .globl -- instead, .weak sets a
>> >symbol attribute.  On an existing symbol (but it creates on if there is
>> >none yet).
>> >
>> >Clang is buggy if it does not allow valid (and perfectly normal)
>> >assembler code like this.
>>
>> https://sourceware.org/pipermail/binutils/2020-March/110399.html
>>
>> Alan: "I think it is completely fine for you to make the llvm assembler
>> error on inconsistent binding, or the last directive win.  Either of
>> those behaviours is logical and good, but you quite possibly will run
>> into a need to fix more user assembly.
>
>This would be fine and consistent behaviour, of course.  But it is not
>appropriate if you want to pretend to be compatible to GNU toolchains.

We aim for compatibility with GNU in many aspects to make it easier for
people to switch over. However, just because there is a subtle behavior
in GNU toolchain does not mean we need to emulate that behavior. With
all due respect, there are a large quantity of legacy behaviors we don't
want to support. Quite interestingly, many times such behaviors turn out
to be not well tested - they are documented by git blame/log.

Building kernel with another mature toolchain is a good way to shake out
code that relies on undefined/subtle behaviors. The efforts improve
health of the kernel.

It may be a bit more off-topic now. I am more confident on linker/binary
utilities side. Not emulating traditional behaviors turns out to be a
great success for lld (LLVM linker). We managed to create a linker with
23+k lines of code which is able to build a majority of software. In
FreeBSD ports, 32k pieces of software just work, 130+ packages are
marked as LLD_UNSAFE, but many should be safe (need developers' testing)
as of lld 9.

>Which is exactly why you want this kernel patch at all.  And the kernel
>can (in this case) accommodate your buggy assembler, sure, but are you
>going to "fix" all other programs with this "problem" as well?
>
>Segher

For this particularly case, A "blanked write privs" binutils maintainer
acknowledged clang integrated assembler's behavior. Another "blanked
write privs" (but inactive) binutils maintainer does not feel strong
about his decision made 24 years ago.  With respect, I should mention
that our design decisions do not need their approval.  That said, we
will be careful with the these decisions because the choices may affect
several companies and several larger code bases.

This is why I mentioned in my previous message that I want to
experiment. I will try out the error on some large code bases.  Nick may
be able to help on Android side. Additionally, we may get help from
FreeBSD folks.

If you subscribe to binutils@sourceware.org, you may find in recent
months I am quite active there. I am a very tiny contributor there but I
try to communicate clang/LLVM binary utilities/lld's discrepancy (in
terms of traditional behaviors) and report issues to binutils. Hope
clang's success can give incentive to improve binutils code health as
well.


Cheers,
Fangrui

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200327165054.67pzzjwtg3dc7hx2%40google.com.
