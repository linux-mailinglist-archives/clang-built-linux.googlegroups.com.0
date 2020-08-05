Return-Path: <clang-built-linux+bncBDRZHGH43YJRBTWQVP4QKGQETR7L2BA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ed1-x53f.google.com (mail-ed1-x53f.google.com [IPv6:2a00:1450:4864:20::53f])
	by mail.lfdr.de (Postfix) with ESMTPS id 39F2623CCE9
	for <lists+clang-built-linux@lfdr.de>; Wed,  5 Aug 2020 19:11:43 +0200 (CEST)
Received: by mail-ed1-x53f.google.com with SMTP id l24sf2240843edv.8
        for <lists+clang-built-linux@lfdr.de>; Wed, 05 Aug 2020 10:11:43 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1596647503; cv=pass;
        d=google.com; s=arc-20160816;
        b=dnzOexHH8sZLcjFQyeh8ERvPtQY6JMzq5e/Vlt9BPv93vKHvu+gj58+9A74IM7hi1w
         6iwxjrj3fnhx6QrlLeRvy/1Oq4ufrlLtlUXjOhlQ2SPr20kJI+LsM3g3NxXnJW9zcUFq
         k5xfZxAdaqRdR/d5da2WsCwS7f73WWJoNEZkICR9CA6wSy1pP6Gg+W6TZNsBJzzyp24L
         y6Qs8CPd26M69CiPhPdns1jV0kjBP/IXgLo6ATSAEuE6ZVLOXiq8dXu+VhdfRZgsFB5Y
         PyXHiUJ6M+oi+3moH727MVXO5BrqIb6X/d6/kuIut/M7pv4kQTF9745S4ATjwJFKSi2v
         rgDQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=8lZ+V7RnUnb//ochYPBb/pTrfCrWRq2Kj4wVwbvtsIg=;
        b=fICgkbwFUaBN5aMosTCjuRD2N0G8ykYzcZFtUe9dw6PPSzTqzj8JR2nkCp+TOlusrs
         5zvTNW2PCTJsLzAcIEESsrlZTeueaVsMw6xzN3YuaLsROvsD9EtN+OKds4sPqLSz+1c4
         uCWBNkrH5J0Bps3Wf0gCUftoiIr5b3MJPA6pXLV2vy7cskeWntzgfxDxww2qOoIoNQ+J
         fgIrCnmyEqmv2sfnToXdZ8sFtF7dhC9hUDxxSSCZ6EaWCJnsyNHyaAqUmRUSpZCe0cp7
         tRydLovfk4wWC9XtJkOuhiGn2WRwSKYc2Q/lV1Z6FI+7rZ7nr0pqvB10I+IbR1E4WT8m
         8FdQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=oziJJooK;
       spf=pass (google.com: domain of miguel.ojeda.sandonis@gmail.com designates 2a00:1450:4864:20::244 as permitted sender) smtp.mailfrom=miguel.ojeda.sandonis@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=8lZ+V7RnUnb//ochYPBb/pTrfCrWRq2Kj4wVwbvtsIg=;
        b=ARRBcSotsdMVzf6JnFLz3SVG9yWIksqZuQZQaqPGRONsxmseZb7mjfruHVyByCV229
         rLw20xhOshfilq1uqwBuBsJxSitmgLPl6n0U4mxCgTg79BsVSlYMiMXVnmAlQLTQD57L
         K5EvRxwAqVuEi/SmoMZpDexf4vkyQZijDDH6j3UMCmXkxk8QEWdvuZgze3yUjv3gP17A
         ztxRibIDKwzM0QEupVyBN9fcG8mDuWWwiVLAXnuSBAp2tbHJru+kE/MY6Sh5Vjvs17H3
         5ZDJHbgm6E0hGSZuhXaF0a8rlGKb923iVn1MAb9psd+VMEm5BClg0lxEX3dYMEjY0K6b
         RDaA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=8lZ+V7RnUnb//ochYPBb/pTrfCrWRq2Kj4wVwbvtsIg=;
        b=Wpx3QWEPQIbblEhi+WTKJ58T/Pxu0ahJlR6swSxeHx+l7eIspzTwX78i21XKrE5d6q
         LmhlyE36JDg+XC0xapP1xdwYTks9OM4BsxROrweaWV6AzE0Z4fEHg1fXvRjgbx6ay0qo
         otnQWuY4XaRShVz4srYFjEY1EooaHDfsaEm7OkRRaWgeCyjAGFO+xyIVyETFx0sNKlb0
         lBKi7naiuenKdCSm92S5cptIatnk2vmRYK9EQtp8E8q5ySokYCGG46+YHWMfsLNmhEBA
         kz/VkcBn9cua01+xi/SYvZkFVuMZ+85itiQUrWVVUkj6F50xwHsjhMtqJ2ZtfGJVptIM
         aKhA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=8lZ+V7RnUnb//ochYPBb/pTrfCrWRq2Kj4wVwbvtsIg=;
        b=IslHC9FMRE/XUzZjzX8UW3bH0x3YAMfQ4RSHX8e0NLJXAY7ZR3WBW25S53d7iKUrMV
         fvIHaOm2a5nQjgUhGv7OYK3gM1Ft7ea+6C6EfNHL0pDp372/AI8Fqsg1LpB8606IaMJH
         NAR8o746152VPSBpNxuJ4SSthlHFK5WI8J+/6/juOiPGN5GCQhBkXd2ge+qyCPbxfnEP
         PQYeSy4AwPqzYh1hSNSNv00kLR8L5Q4wjnHXK6Ng0xbBL4d9fzSHV5U66EvtlodRZKmN
         6fsXBzc2ChQqA2icY9iHQju84imOA+X4WeD+w5VvkaMRNzrMW4ReVDwTYrI1Y1W6NnpC
         X2+A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533s9eSbBfZlLkRiVxhm2SuNNj36KwuySRE3x9qyiIm1QdiIeDx2
	IUEw37jG5cKHXXe2nnIgm/M=
X-Google-Smtp-Source: ABdhPJxVIje2AzolElbeey+PuR4u9G7vPODzNEkoGtF3PkCdFx0LjekzSxVZcsyYXbdOX2eBVq2MyA==
X-Received: by 2002:a50:fd19:: with SMTP id i25mr245299eds.101.1596647502946;
        Wed, 05 Aug 2020 10:11:42 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a50:baa2:: with SMTP id x31ls2885308ede.0.gmail; Wed, 05 Aug
 2020 10:11:42 -0700 (PDT)
X-Received: by 2002:aa7:dc4f:: with SMTP id g15mr215488edu.335.1596647502287;
        Wed, 05 Aug 2020 10:11:42 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1596647502; cv=none;
        d=google.com; s=arc-20160816;
        b=tSEPyG0CEJTFMMMwBlcaQf6krqQ8TDLh0jzUhJwyl0hUPC3ozt71mUtvMgp88YklCe
         N3QZnzXwmzlSdEJGkmsMyUi8ecoO/Q03cfzldkZfIZhikNPbYAxkMGnO8IaRZw34KdiW
         8V+2qfkzJ+NrPAU+6mGvgmaEkP71UpxWyU33IZOcBBigGh3Vfqabp1u9v7BPNyPeIfT8
         oT19mQcmRlpfOG+BhifF0n7PkbXLuAOwyjPI+iC64ntZaLcLreGzXSih/9cUjX7WI9YX
         jrvCr39sVylnjcYcXfV1FgglF0tmiy8xsVB6Qf6ZmY264qtx6+L+zbBsu51Q6urcfLWT
         cSTg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=wXACrCF85ppHwQuHqdOjCkc1N78NkRlSijLNjTow210=;
        b=rS9ufx67WPTLTmA4JRrjAZ8CMoULNHhn89EYBZg5D3setxXg0Gl2IyLEUbeuxf6jA2
         dwg3RztIbsZuAFUu5iFzVYE53bk/KuJKpoJBRWjp6aBwfi+z1dmIL0fE0XCmtAkOJGn9
         Ev324ZlaWgfgznW6GDgYvJfpPKrscQdp6dbgz1nngekc7TpxZQi/akGwqDxmpe2nnC3t
         I8f/ZLUBGwPSc83nktejR6H2nm/NDBViEe0gEcmlXCLiPcUaS5rXOu2XAsvEWmitMoC2
         q9GvZjChYMIUyPo8kqlNiz42686rt0/pvucBFmGgpxpXHsDrtNC4zJkwW6HXnJQF2jk4
         LBHA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=oziJJooK;
       spf=pass (google.com: domain of miguel.ojeda.sandonis@gmail.com designates 2a00:1450:4864:20::244 as permitted sender) smtp.mailfrom=miguel.ojeda.sandonis@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-lj1-x244.google.com (mail-lj1-x244.google.com. [2a00:1450:4864:20::244])
        by gmr-mx.google.com with ESMTPS id q9si122543ejj.1.2020.08.05.10.11.42
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 05 Aug 2020 10:11:42 -0700 (PDT)
Received-SPF: pass (google.com: domain of miguel.ojeda.sandonis@gmail.com designates 2a00:1450:4864:20::244 as permitted sender) client-ip=2a00:1450:4864:20::244;
Received: by mail-lj1-x244.google.com with SMTP id s16so33324634ljc.8
        for <clang-built-linux@googlegroups.com>; Wed, 05 Aug 2020 10:11:42 -0700 (PDT)
X-Received: by 2002:a2e:b814:: with SMTP id u20mr1829339ljo.202.1596647501750;
 Wed, 05 Aug 2020 10:11:41 -0700 (PDT)
MIME-Version: 1.0
References: <20200802163601.8189-1-rppt@kernel.org> <20200802163601.8189-17-rppt@kernel.org>
In-Reply-To: <20200802163601.8189-17-rppt@kernel.org>
From: Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>
Date: Wed, 5 Aug 2020 19:11:30 +0200
Message-ID: <CANiq72k-hZwbnttADQhi3+NrHkLDVe95jxLAPvLbvSOW41+HaQ@mail.gmail.com>
Subject: Re: [PATCH v2 16/17] memblock: implement for_each_reserved_mem_region()
 using __next_mem_region()
To: Mike Rapoport <rppt@kernel.org>
Cc: Andrew Morton <akpm@linux-foundation.org>, Andy Lutomirski <luto@kernel.org>, 
	Baoquan He <bhe@redhat.com>, Benjamin Herrenschmidt <benh@kernel.crashing.org>, 
	Borislav Petkov <bp@alien8.de>, Catalin Marinas <catalin.marinas@arm.com>, Christoph Hellwig <hch@lst.de>, 
	Dave Hansen <dave.hansen@linux.intel.com>, Emil Renner Berthing <kernel@esmil.dk>, 
	Ingo Molnar <mingo@redhat.com>, Hari Bathini <hbathini@linux.ibm.com>, 
	Marek Szyprowski <m.szyprowski@samsung.com>, Max Filippov <jcmvbkbc@gmail.com>, 
	Michael Ellerman <mpe@ellerman.id.au>, Michal Simek <monstr@monstr.eu>, 
	Mike Rapoport <rppt@linux.ibm.com>, Palmer Dabbelt <palmer@dabbelt.com>, 
	Paul Mackerras <paulus@samba.org>, Paul Walmsley <paul.walmsley@sifive.com>, 
	Peter Zijlstra <peterz@infradead.org>, Russell King <linux@armlinux.org.uk>, 
	Stafford Horne <shorne@gmail.com>, Thomas Gleixner <tglx@linutronix.de>, Will Deacon <will@kernel.org>, 
	Yoshinori Sato <ysato@users.sourceforge.jp>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, iommu@lists.linux-foundation.org, 
	linux-arch <linux-arch@vger.kernel.org>, 
	Linux ARM <linux-arm-kernel@lists.infradead.org>, linux-c6x-dev@linux-c6x.org, 
	linux-kernel <linux-kernel@vger.kernel.org>, linux-mips@vger.kernel.org, 
	Linux-MM <linux-mm@kvack.org>, linux-riscv@lists.infradead.org, 
	linux-s390@vger.kernel.org, linux-sh@vger.kernel.org, 
	linux-xtensa@linux-xtensa.org, linuxppc-dev@lists.ozlabs.org, 
	openrisc@lists.librecores.org, sparclinux@vger.kernel.org, 
	uclinux-h8-devel@lists.sourceforge.jp, 
	"maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <x86@kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: miguel.ojeda.sandonis@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=oziJJooK;       spf=pass
 (google.com: domain of miguel.ojeda.sandonis@gmail.com designates
 2a00:1450:4864:20::244 as permitted sender) smtp.mailfrom=miguel.ojeda.sandonis@gmail.com;
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

On Sun, Aug 2, 2020 at 6:40 PM Mike Rapoport <rppt@kernel.org> wrote:
>
>  .clang-format                    |  2 +-

The .clang-format bit:

Acked-by: Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>

Cheers,
Miguel

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CANiq72k-hZwbnttADQhi3%2BNrHkLDVe95jxLAPvLbvSOW41%2BHaQ%40mail.gmail.com.
