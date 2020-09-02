Return-Path: <clang-built-linux+bncBCIO53XE7YHBB5GGX75AKGQEKSYXGCI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x840.google.com (mail-qt1-x840.google.com [IPv6:2607:f8b0:4864:20::840])
	by mail.lfdr.de (Postfix) with ESMTPS id D005025B3AD
	for <lists+clang-built-linux@lfdr.de>; Wed,  2 Sep 2020 20:24:53 +0200 (CEST)
Received: by mail-qt1-x840.google.com with SMTP id i42sf427524qtc.2
        for <lists+clang-built-linux@lfdr.de>; Wed, 02 Sep 2020 11:24:53 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1599071093; cv=pass;
        d=google.com; s=arc-20160816;
        b=H8NptPs26VsEeTxYuH0GqxK6KgmeOZVgWgwuul08T4Jka4lTBUn5jSYTvyFa5bvyk+
         t9p71nM8Y1M3L1KlmcgZS3Zt8dkaGEoO2koE37jnc+J4pHLDKlHE8oIH66OlKaq76yrD
         dyDiZDfB7V1TS/0GQM3nf0Cfb/svhBhORjgTbVD0LncCPod4B/4chN8UmD1sxD+uR/yc
         /rHtHjLpSo/GIbcsuWRV9V21tiqAnhuHeAU3qICnrWxhHgKC0gaaN2aqKTLNa4jftVWA
         qz52RLdIDrrI1pRDWoQvvcvIdYZ94wT3T0hUlzHQGVP9L6VSgZp9cX8pXMBRMaKQEMub
         qimQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:date:from:sender
         :dkim-signature;
        bh=ExHGmEVf5QErMYdytndx7i2qjhrToZTtJQkFOFWnyDk=;
        b=CbbJePormAT/HTeBm7GcoGwGFInAtQFEWbXxs7PD/PyHbfwtQsw7mHxuOGSWgtxfwP
         h/X8gOIkjKNGBLUjPE6oSrz1jo0u54Sz4HAHI+SQs7hXN83g6aMu/aOIoVDauVCU0BXT
         10DnwR6AsLDLsv/EokKUQZ5zwoHiSdBORAwpvoMIorGYEgK2peX/rvXkb+JvPkzRICzo
         u8HUxq//e4hFCyKQGEBnpMpfKJpQ4MTW4oFXlxLzARIpJamFoRzHsT6VrQtdiade6JvP
         XbemngqJfdJcZCp43qH3o1VFi5ilFkHXqBB3mnGtjLTI27JnGZBI595Rdt6FFgK4UpLj
         PKUg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=B911asU3;
       spf=pass (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::f42 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=sender:from:date:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=ExHGmEVf5QErMYdytndx7i2qjhrToZTtJQkFOFWnyDk=;
        b=HIv2W48Xs2pwBilI7lpsQbw3+6QD6tQLRtH+L4kO1mVvNFhBteMKPu8sql+0R7ra2s
         Boxny2nkCkJtvRfa5YQ+tYbriZ+i4JuCi0aWK//yJS4Zxz/MyGQta7iUiBde4TdRiz8C
         YyrQOGnzlqPVe+yjzP/JMUbY0r0bqd5ijiW8dURaSNBCeUuTcDVvQArOQ61tUaKBFveq
         n484Yt+W3DcFlI/G4j0xP3B9cw6J3VG/bWyt07ORBO/hoj3rMFSAgQeOEzpKRmbCW7er
         384jDuNa7gmSHyDcdsJM8n1zNV+zM1LF4PLO9xmclI4qd7j7udbX4e5WzgFHXw/0CUge
         fYUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:from:date:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=ExHGmEVf5QErMYdytndx7i2qjhrToZTtJQkFOFWnyDk=;
        b=WUpF8qKoDj0YGR5ENjoj3B6Kkzxrq8VL+Bu33GZ/azu9RuJswlYwX5RPgXyZhs/JFx
         VkmnnNVtIUnqRFilaUVd027cDb6A+480CncgZDQqD4seg90kKBxvtfH99LDNM/s5A+Hw
         jHYOyeDob0Tt5mr9wcPiM2jU/3lee5EAeQxHqrPb7rDJIdd7JsViRvA/XO5erXbmjAxs
         T7ZhnwnxH1yi0QJoOp3kd9EBHrX1H5s/BavUWUrJtFITx4F5Y8y02UZ6KpstwaROErle
         RwjmsOGedqZeHHsRJgHvIisFSEQp1dF0bg61RVLJNTR5TeSxOSTNlcJecdD4gc52SSxj
         b42Q==
X-Gm-Message-State: AOAM5330nICYuM22NkOIoHx7BGiV9uoQUG400xFGmHNqNObaDb/ZL5Th
	GiclsRkhDMtWTrhAPDZJlPQ=
X-Google-Smtp-Source: ABdhPJxdueBFn89zo4DOEICqMGP0j+suzDg6z/TDTyaXR4OGsJ/AELLZ+dkPoqFI6EMXPPuVYYjkIQ==
X-Received: by 2002:ac8:4e81:: with SMTP id 1mr2685714qtp.62.1599071092755;
        Wed, 02 Sep 2020 11:24:52 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a0c:b3d9:: with SMTP id b25ls713835qvf.5.gmail; Wed, 02 Sep
 2020 11:24:52 -0700 (PDT)
X-Received: by 2002:a0c:9b01:: with SMTP id b1mr8311904qve.174.1599071092318;
        Wed, 02 Sep 2020 11:24:52 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1599071092; cv=none;
        d=google.com; s=arc-20160816;
        b=wBCk9XapbbOwKTEZ11QvMj8r4zkmQdr/IBrLn9TNIJK1YWaD4uhJBQuiWRxq9bKwXi
         WiS29AB5yN2qzvFTp5RfXchmEKM1DDZPC0Sq3hMfcWNMPAu4WneFFdwBN/0fDeEQvep/
         k5kj4IxuLFVy5XnVN3AVRQ197whCYWcyzjOkFv0GIkf8xmpUP3WOImKLylA2aN6n57ge
         ss+GTAKlEJgLrSHuB83kZLyf6HG0PkbSSgcwTtZZVoaWUxtFUVe/Hu4ucTF32d99iIWP
         ptQPohPXnwGqXcx6lwAJhvvg1qFbb3GUqwLTih9mfl+1UdzRnhTpFx5fuoYvVHg/HtyP
         I6Gw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:date:from:sender:dkim-signature;
        bh=toj5XDYJGTsAAc7YZakLaUE+SItkLOgxz+rwVKGxyVk=;
        b=SRkxnypvUDbgaxhaOdTdNglbyhS5VlN2J0OKtRPuncCE55fMjI8SyJAfCzOo784ItE
         0Rh2yUzVT3JLGUdQAQgwQVRNPWYhnVitL+FJT/LM3KvoUA4NMxwn3xze8w8YcWNcJWAo
         cKGd7sVeLeFwLZwkPiVBETKD3otIbgMmv73Bk3GvlpXxmiyaZO3bBdN8aZFLQsygxwQJ
         kT9PAlgWdf4fPtBbEaQwQmcI3lkRshVwTdOX6Cd/cszhL6JtI1rwUml41LfCgkQY9JUG
         GJvXs3m7atsxGuuxYXLWiRXy9rGfEwLThELw/04ZAGUQjvGs8BxZYd6pBWn2VBUqq32W
         qqOw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=B911asU3;
       spf=pass (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::f42 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
Received: from mail-qv1-xf42.google.com (mail-qv1-xf42.google.com. [2607:f8b0:4864:20::f42])
        by gmr-mx.google.com with ESMTPS id x13si27229qtp.0.2020.09.02.11.24.52
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 02 Sep 2020 11:24:52 -0700 (PDT)
Received-SPF: pass (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::f42 as permitted sender) client-ip=2607:f8b0:4864:20::f42;
Received: by mail-qv1-xf42.google.com with SMTP id m14so70719qvt.1
        for <clang-built-linux@googlegroups.com>; Wed, 02 Sep 2020 11:24:52 -0700 (PDT)
X-Received: by 2002:a0c:f704:: with SMTP id w4mr7899061qvn.79.1599071091841;
        Wed, 02 Sep 2020 11:24:51 -0700 (PDT)
Received: from rani.riverdale.lan ([2001:470:1f07:5f3::b55f])
        by smtp.gmail.com with ESMTPSA id k6sm163427qti.23.2020.09.02.11.24.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 02 Sep 2020 11:24:51 -0700 (PDT)
Sender: Arvind Sankar <niveditas98@gmail.com>
From: Arvind Sankar <nivedita@alum.mit.edu>
Date: Wed, 2 Sep 2020 14:24:49 -0400
To: Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>
Cc: Arvind Sankar <nivedita@alum.mit.edu>,
	Linus Torvalds <torvalds@linux-foundation.org>,
	Sedat Dilek <sedat.dilek@gmail.com>,
	Segher Boessenkool <segher@kernel.crashing.org>,
	Thomas Gleixner <tglx@linutronix.de>,
	Nick Desaulniers <ndesaulniers@google.com>,
	"Paul E. McKenney" <paulmck@kernel.org>,
	Ingo Molnar <mingo@redhat.com>, Arnd Bergmann <arnd@arndb.de>,
	Borislav Petkov <bp@alien8.de>,
	"maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <x86@kernel.org>,
	"H. Peter Anvin" <hpa@zytor.com>,
	"Kirill A. Shutemov" <kirill.shutemov@linux.intel.com>,
	Kees Cook <keescook@chromium.org>,
	Peter Zijlstra <peterz@infradead.org>,
	Juergen Gross <jgross@suse.com>, Andy Lutomirski <luto@kernel.org>,
	Andrew Cooper <andrew.cooper3@citrix.com>,
	LKML <linux-kernel@vger.kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Will Deacon <will@kernel.org>, nadav.amit@gmail.com,
	Nathan Chancellor <natechancellor@gmail.com>
Subject: Re: [PATCH v2] x86/asm: Replace __force_order with memory clobber
Message-ID: <20200902182449.GA3586123@rani.riverdale.lan>
References: <20200823212550.3377591-1-nivedita@alum.mit.edu>
 <20200902153346.3296117-1-nivedita@alum.mit.edu>
 <CANiq72=jwj0xocJ7iAkntbnHDQphL79XcPREz1qpW0yqrMsz4g@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CANiq72=jwj0xocJ7iAkntbnHDQphL79XcPREz1qpW0yqrMsz4g@mail.gmail.com>
X-Original-Sender: nivedita@alum.mit.edu
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=B911asU3;       spf=pass
 (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::f42
 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
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

On Wed, Sep 02, 2020 at 08:19:25PM +0200, Miguel Ojeda wrote:
> On Wed, Sep 2, 2020 at 5:33 PM Arvind Sankar <nivedita@alum.mit.edu> wrote:
> >
> > + * The compiler should not reorder volatile asm, however older versions of GCC
> > + * had a bug (which was fixed in 8.1, 7.3 and 6.5) where they could sometimes
> > + * reorder volatile asm. The write functions are not a problem since they have
> > + * memory clobbers preventing reordering. To prevent reads from being reordered
> > + * with respect to writes, use a dummy memory operand.
> 
> I see you added the information to the commit message, but I'd still
> reword this to something like:

Ah sorry, I forgot to change the comment in the source as well.

> 
> "The compiler should not reorder volatile asm, however GCC 4.9.x and
> 5.x have a bug where they could sometimes reorder volatile asm. The
> bug was fixed in 8.1, 7.3 and 6.5. The write functions are not a
> problem since they have memory clobbers preventing reordering. To
> prevent reads from being reordered with respect to writes, use a dummy
> memory operand."
> 
> The important point is that 4.9.x and 5.x *have* the bug and that is
> the reason for having the hack. In the old wording it seems like the
> bug is no more. Then one wonders why the hack is still there (i.e.
> perhaps because we don't trust it, perhaps to support the rest of the
> minor versions which are newer, perhaps to avoid regressions, perhaps
> only the comment was updated, etc.).
> 
> Cheers,
> Miguel

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200902182449.GA3586123%40rani.riverdale.lan.
