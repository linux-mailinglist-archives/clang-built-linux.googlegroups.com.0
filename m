Return-Path: <clang-built-linux+bncBDAZZCVNSYPBBIV6SP7AKGQEPN23AWQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53e.google.com (mail-pg1-x53e.google.com [IPv6:2607:f8b0:4864:20::53e])
	by mail.lfdr.de (Postfix) with ESMTPS id BB32D2C83AC
	for <lists+clang-built-linux@lfdr.de>; Mon, 30 Nov 2020 13:01:39 +0100 (CET)
Received: by mail-pg1-x53e.google.com with SMTP id u26sf8441773pgl.15
        for <lists+clang-built-linux@lfdr.de>; Mon, 30 Nov 2020 04:01:39 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1606737698; cv=pass;
        d=google.com; s=arc-20160816;
        b=wYXcqUXfZ4WRy1INN4aRKQsl4wUmKScA1F/JSwUywMy0vXcgoCLauwHCcp5Tmq2iTp
         5prySjCB4Mjk0b1T+d2lGHXNQUAxhppo2/KbQvCPua3mlL9K1D5V9h8ZV7AiiKiJ1JWO
         Cj7PACU42jtEjbqhZHXQr8sjbCFQoO6F3Dsoxh12huvIn9gPm1SAiQx0vyMbrb9LpL4U
         OoLK+5qtSpCIP4W4UR8jUJAglTCvvUMf8boYjz4nl6xIXOU6ZA4Cl0RZUtpYEkbLFa37
         Zh2Bx9LwgNYDfvg0Nu18JPl1r8pxLNADl+b71Xo0kNvCJZn7/FtkCSgolFRUA7mfauuy
         pgrQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=LXtLuK6s3ILchV/asrgWFhqykzP8E5MTME2KDGJFcqM=;
        b=WikRymyCoxC7gJCniW6hHcsmtf6xkJW+aK6aVTvCR4KB/nLwM74awhY+Um3JWzEVdL
         G+Qg06+HDa+UgujfDS9JIQwMtHUn+s/OPWWxKMIDt+4IcRm5oJJdKyVanzTxSVluWxJE
         4dTHxG/g1t/8My9gRgRewGq5EbIsrsebxl1oJ0jBLeHyk3YyN3U4ZbyafuO1qAYKf1KF
         oAzzKZOzc10I4CtH+BiF0Ig9KWJ1o5AcdEs0plrlxm+nUbTnXYlg2yMhtFO6r8Npa3/f
         HxCcaDvkEnQrSK78pmxVzwjoL8/n6H4KoO1iy+teWOyj8R+TuKsnd5Rrx6r6TPFyPrHL
         G1lg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=EwVQLNws;
       spf=pass (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=will@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=LXtLuK6s3ILchV/asrgWFhqykzP8E5MTME2KDGJFcqM=;
        b=HhFgWLQJBMl+AfP9dWNQ48rxqERziNxpz2NJz56J2hYK6L4H/myOluFvStt/M9vCxj
         poM2OM5rMwEEVzlV1kKoHVu9uDciWoR4h8qJ+oLgRvfkKOXEMwMcDI9aGNZ6a3CvM2C5
         5p35wsCqati0lPXqYEQBd6E/scIERMPtWPHuBGKitbmGMukCA4dOI9nSFNzERHHHm55D
         /PMaCUY6o08KIZ8fy+T7FL7TQeirhgfPkNCG5XQHpA1mujE2V+2IEzY1il6cMUGeHrEY
         wV99SwLdrmIBEgoNDRCGHRcekR0bMh6jIEG/LupNCWz2QBWWl5Fim70MMfSWPuHBA9tw
         VB8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=LXtLuK6s3ILchV/asrgWFhqykzP8E5MTME2KDGJFcqM=;
        b=GK/O9C2cLAfV4N1sNLvYaZREJ1YICyzgIy4y4we34liowAMfL4o+hjszt6L5/pCUyP
         qqDjQ0vyBg1pUyMX/9kY8EQlcC9jPq0upVqW4WjF6GGp62iGKG8VJTPaCnhh1pYJzr4N
         lNAaEm9IkYzfi3adzKSQLN6XqfONiP+b8KYmdewagq9WLsEigX8iVxPjUn3DpSWJytJL
         k9huJQDI/29tvCNbJsnxIWOYtleayXy991D7ehwOSmPrK6lFFuZDvd83JIcuQdtOPe+O
         1ypSbO6sfjTR2WcQ8giOPB20NV/Xb1kgZCSzxsLZReaf+P2IO+0vY77KVwLwru6JhREk
         16og==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532pN1qrG1sYC02xhDY27osuQsoFNXttR1aeB6IzwDGZsMarAIMV
	U6bZRAXFWM1aObyBHz8PFKg=
X-Google-Smtp-Source: ABdhPJxlmIikdRjYbREXvTUrIDkgrQ1LaEcDVoEuZAFCpYJnBlSBB1+rIwTwENeYDmfY7haZOK0QBw==
X-Received: by 2002:a17:90a:9f85:: with SMTP id o5mr12336773pjp.63.1606737698527;
        Mon, 30 Nov 2020 04:01:38 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:e905:: with SMTP id k5ls5753088pld.4.gmail; Mon, 30
 Nov 2020 04:01:37 -0800 (PST)
X-Received: by 2002:a17:902:ed0c:b029:d6:cf9d:3260 with SMTP id b12-20020a170902ed0cb02900d6cf9d3260mr18159943pld.3.1606737697880;
        Mon, 30 Nov 2020 04:01:37 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1606737697; cv=none;
        d=google.com; s=arc-20160816;
        b=a9lMkOIaeHEFQVdCO80F/5Uhv0sX8ESNpCmIXKln5+GzWQrGhMx3H3K7yqpzMikc0F
         GfHkBJLarpYigDTTseNRnfyuAWbb7nt0DtYLznSnWXmslIVPxqR+jMOefaV4JPQQxlyi
         gNHDvrRGYmN/rktRibXZlRJsV35jszgqTm7umdI/yUPpVtq71Jfx3yk+uq1A4VbqQDO2
         6L99O37xnquJmGOyDhebQ/RE50f6c6Xv8Md5Z3pV23MUvx+IN+9mqm9TVb9QgyRoOuBP
         ZNuwV7sfnbfm8r0OLzSgMKlLcYbZPvym6sfBPeBlCU8sEzDBz+PB9vaHCeFpOf3lmBDj
         swVQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=beLW5YW3G6qoca8EvrxytRODp0eTFEQuBs6jxkyykns=;
        b=iegErFgqfwHOWlQvkHp7kKXUvdpX/KEYmHTvAiiTjAJZ/T9ykA903gHy8s6b2gRUwp
         ilsYqn0nYbH3zzG8PoP/bYCv+Cqk5KSpDYl5sKYlqhDOibXEkuSrOYOcwuxGWDJoKAff
         eWlHoOR8VEShlgXWh4QvKM+X/hgD+vXhU8uO737vdrU4cBWB2eyFAFAuSPA9TubbG1Yz
         /KDmzcukkKg6y5yb1KRbMIeZTb2Wkm7wksjAVI6jss0CP1ym22m131VRWu0nX+Pz8t2T
         AAIu6jx8Vl+sS9/6vWxTl+kGRY4rIvDwpjuttlJPpr2zaexBKzzzhLhDbKHZYkzA1wy7
         MF6w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=EwVQLNws;
       spf=pass (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=will@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id o2si1212696pjq.0.2020.11.30.04.01.37
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 30 Nov 2020 04:01:37 -0800 (PST)
Received-SPF: pass (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 89B91206CB;
	Mon, 30 Nov 2020 12:01:34 +0000 (UTC)
Date: Mon, 30 Nov 2020 12:01:31 +0000
From: Will Deacon <will@kernel.org>
To: Sami Tolvanen <samitolvanen@google.com>
Cc: Masahiro Yamada <masahiroy@kernel.org>,
	Steven Rostedt <rostedt@goodmis.org>,
	Josh Poimboeuf <jpoimboe@redhat.com>,
	Peter Zijlstra <peterz@infradead.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	"Paul E. McKenney" <paulmck@kernel.org>,
	Kees Cook <keescook@chromium.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux@googlegroups.com,
	kernel-hardening@lists.openwall.com, linux-arch@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, linux-kbuild@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org
Subject: Re: [PATCH v7 00/17] Add support for Clang LTO
Message-ID: <20201130120130.GF24563@willie-the-truck>
References: <20201118220731.925424-1-samitolvanen@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20201118220731.925424-1-samitolvanen@google.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: will@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=EwVQLNws;       spf=pass
 (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted
 sender) smtp.mailfrom=will@kernel.org;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=kernel.org
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

Hi Sami,

On Wed, Nov 18, 2020 at 02:07:14PM -0800, Sami Tolvanen wrote:
> This patch series adds support for building the kernel with Clang's
> Link Time Optimization (LTO). In addition to performance, the primary
> motivation for LTO is to allow Clang's Control-Flow Integrity (CFI) to
> be used in the kernel. Google has shipped millions of Pixel devices
> running three major kernel versions with LTO+CFI since 2018.
> 
> Most of the patches are build system changes for handling LLVM bitcode,
> which Clang produces with LTO instead of ELF object files, postponing
> ELF processing until a later stage, and ensuring initcall ordering.
> 
> Note that v7 brings back arm64 support as Will has now staged the
> prerequisite memory ordering patches [1], and drops x86_64 while we work
> on fixing the remaining objtool warnings [2].

Sounds like you're going to post a v8, but that's the plan for merging
that? The arm64 parts look pretty good to me now.

Will

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201130120130.GF24563%40willie-the-truck.
