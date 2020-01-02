Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBSF2WXYAKGQERN4IVQQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x93a.google.com (mail-ua1-x93a.google.com [IPv6:2607:f8b0:4864:20::93a])
	by mail.lfdr.de (Postfix) with ESMTPS id CF55012E1CD
	for <lists+clang-built-linux@lfdr.de>; Thu,  2 Jan 2020 04:02:33 +0100 (CET)
Received: by mail-ua1-x93a.google.com with SMTP id 35sf3171855uaq.20
        for <lists+clang-built-linux@lfdr.de>; Wed, 01 Jan 2020 19:02:33 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1577934152; cv=pass;
        d=google.com; s=arc-20160816;
        b=Nt+Q/R5Dpu1dOXVn1AHyQnETI4Nc8+awbDjPjUgk1JKCzrw9LpTf9UfukjosEgPPXk
         j0VVNegwpYltrsT8yba0l/M5vTqReDqYkqJ3cBu06xEXh6UshEwKGqQM+gvx6eJSNL9J
         MsTFHKx4fteqxUkkVojI6sJeOmkQUHhL9PYr70lcr7WC3TLcVuaFpHcMgzXHMMDxLYMp
         JFHrJ8jbnopn9oMidqScCkHgT0nyqsbPKvwPLsiQ85ITQLkg1dDuha4RaZidlJvA8Bus
         QEVX63EEbtIHNQqbQPtJyARapqV79nlJcxKIcj/1O3DqQF8fExXGVWbhLYl3KO2Ufgzl
         H5Zg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature:dkim-signature;
        bh=3f4CmconWy4WfnlpCJI5Rpk93pL9jw2nEV3gLXcPttU=;
        b=VQfY6oLqkWpRMFZvlfA1eDNYlhiG/pGY4E8oh3sLrWucFm86ZPLUt9TTzALEw/WcJG
         uDF4dmEJgevQcaq7HrGZ4wj5OLB4ChhJQmBtO1jkhK0JT63At1w4WUSXQl8iPwVR52LQ
         SsCXwliTeaj6LV/hWcaOG/u1Mo3pV8Gp8mGHbQA7OAZ/TofLrhm5hGTJq9vO20hyGGvJ
         gJTA1wV+fSm+5MrfLe8/M6vX1qaMIi+b65XhLHiUNqvqkfAnRn3if/yiYjeienm5IKpD
         D/aGPNX0kFz2McSfOYlpYS4ldtQ1Mkn0YkNsCJKCZz0irJKZYgEbTpydMES1f13shit/
         fx6Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=vIBadxwj;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::341 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=3f4CmconWy4WfnlpCJI5Rpk93pL9jw2nEV3gLXcPttU=;
        b=E0EnJkR/hpsVpXlToeaxnBKx54wl2QvWH1Hcsg/p02BvJOLcEqfqWJgefvif/8rsSQ
         9rPzxVHm8awK1FIc9DDo+cARwL6hHFEzK8klLdjfakDLlO8YsOoFwRrjAj2b4enPbzsV
         57uWWYWkfqdUKmnsTpHzRtMq6E3j+TvGQ3lmRwAPgmARq06vTyZjfDBf0hAVv6Gl56tc
         C+RP6xf2KzS1KzAZeDs8QjYUd+pwys4/E46Ohm6FPDXD0uQPOns94DvGdYLaX3KIkqV6
         KGVX389oFxpT2iZwkIuePv0wjoIbowCC/0LUKomUDtdN/hafFAfeJO3pjS8qKcY9kJ04
         Whwg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=3f4CmconWy4WfnlpCJI5Rpk93pL9jw2nEV3gLXcPttU=;
        b=hNYhfjig/K3Eq0yYAUb2mnEHkZtiQkLCm5Xl2fXUxLlCo/MwrK0cskpCgZ3kkgwJrH
         ub493fdO2ahMUkNfpFn9R9lBTQM7Tehj3UfzJCkcAAS0ElpiuEeEawxNgrRH6SgAuBzo
         fWaUHOG3faIjU9zE9GzVenzaUV+9LcDYuOcTYLcwy0lV94VZrsI/ReQH/FW7XFhoomj7
         e80yjNNycLwr917/YcucJI+XeXAmMJAmz9FNhbb0Y4S3xFJP1rIotDgOj16SNO7pnOwa
         mOkEcbObtPTc5uzC5c5KgVktVRi2gvlUM6+ODay0r9N2n2SXkuy75+BW0pXDIVoqMrAt
         CkQA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=3f4CmconWy4WfnlpCJI5Rpk93pL9jw2nEV3gLXcPttU=;
        b=pIzvtzbH1aEuUo/+EKTUvjEuamYrUu9eCbGrimNWt+Rm7xYcZAWTePUMg8k/Au5wms
         0jGRqT0oHYPf9sQwo1joTzO+NL0Em3dbAoV8Po86c9WvswjFZ59Xhi1Eo0qYCQm7CRYu
         vVdREG90NMKYMfX1E8aHtbv5IiZ5i2c2pz3MZeMMQsrdqDMKiyaTHTR2WpZHa8nRESqT
         +glLIKunvZbNHjr42guy6qf/95zTbPzsm094gD58RUS/ol4A67PpM8DcGaocr0/3wn5q
         50dmnD+RQWktHq3hpnN58XskF5QUzL+G62pX6PLovAkb9GPTBo9A2r0HS2tc2YWTkV4n
         bVrw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAUBu/6ezKjP42C8jC8Ew/9y4sxm0iqjFfrgNkzpyyREiIBeNtsV
	En/TKeGBc9ZtWC57sbvr6Ls=
X-Google-Smtp-Source: APXvYqxP9Lf/6SK29oAnaKZd7p4dO4P9lg/SAhz1+RVo8Y13MIJMGOQvhmXLIHUpuqWmF2Y1LzgJ1w==
X-Received: by 2002:a67:f144:: with SMTP id t4mr43694512vsm.36.1577934152562;
        Wed, 01 Jan 2020 19:02:32 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ab0:2a83:: with SMTP id h3ls1585412uar.11.gmail; Wed, 01 Jan
 2020 19:02:32 -0800 (PST)
X-Received: by 2002:ab0:124:: with SMTP id 33mr47924118uak.106.1577934152193;
        Wed, 01 Jan 2020 19:02:32 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1577934152; cv=none;
        d=google.com; s=arc-20160816;
        b=AM3GopG2jJUWaO22scQrUixWevM1FKlxssT3z3bBUr57Ig3y3ZPTeL3iiYMYg+gz0r
         nZZh0sPjI3bm3v+6AZtbaarFhmfzvqpOWcrxuSNOLDc34Lf8jDMGyZiJXiO0qEEVT5fY
         I1QfHDXKXiK6aWmDKEinU1SCH40W7WtOQsaZx7NGgTQpDBSd8bxHY/rRV+dA24zrxDY4
         zZctjg42YZEbwXSWw389TkoBKct5GGNXQ5vAdN9Hhw/8DKR3yIiQ+sH0hZCOI5Nqa5Uz
         RBR3bPm9prMVJLtB31LFJ9tQO/L8MzOABn9egFVt3ySrD2FCYqxxgG+Y7p6PY+X3QyDH
         3TQA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=Fsf4Kv4GKfEO6/i6UJSN8gP+gZz4MfI3CR+WieAs89w=;
        b=kSAb6WibKILqHBfu2YGD2UN9qBXbfQBw+Lj/TsK0ahvZfMxB9TXjzJuqIn8pO0cZwh
         +YBlzga5aryrrYtMFxG6SE35WJoDN+78hgzjBkRbB7RBeHaSiufrGrLvrY1Hq2VBYNkz
         kD3hr/hY9SI1T54mkXT3ZRJn2jIe/9wXVNej7c3JLPv8tXsV7znKpr4X1L6JglcEiiOn
         SWox7U2OCJ8qA/iZ0F3fMhgw6zDDCfA0oTcVxu5Z5PX6DMqnbGXBrz5F9WgKqi7J3D4B
         g3+lUB+nfxGe02RmlpTOVxHau0y1VtJuzYnOk2q1u4+mlQ+UaQ5Y90SSdnbzNeLyKstA
         Qp/g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=vIBadxwj;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::341 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-ot1-x341.google.com (mail-ot1-x341.google.com. [2607:f8b0:4864:20::341])
        by gmr-mx.google.com with ESMTPS id t203si1282972vkd.2.2020.01.01.19.02.32
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 01 Jan 2020 19:02:32 -0800 (PST)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::341 as permitted sender) client-ip=2607:f8b0:4864:20::341;
Received: by mail-ot1-x341.google.com with SMTP id 66so55174575otd.9
        for <clang-built-linux@googlegroups.com>; Wed, 01 Jan 2020 19:02:32 -0800 (PST)
X-Received: by 2002:a05:6830:15a:: with SMTP id j26mr85700884otp.137.1577934151509;
        Wed, 01 Jan 2020 19:02:31 -0800 (PST)
Received: from ubuntu-m2-xlarge-x86 ([2604:1380:4111:8b00::1])
        by smtp.gmail.com with ESMTPSA id o20sm15235472oie.23.2020.01.01.19.02.30
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Wed, 01 Jan 2020 19:02:30 -0800 (PST)
Date: Wed, 1 Jan 2020 20:02:29 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Arvind Sankar <nivedita@alum.mit.edu>
Cc: Arnd Bergmann <arnd@arndb.de>, Paul Burton <paulburton@kernel.org>,
	"open list:BROADCOM NVRAM DRIVER" <linux-mips@vger.kernel.org>,
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
	"Jason A. Donenfeld" <Jason@zx2c4.com>,
	Christian Brauner <christian.brauner@canonical.com>,
	Vincenzo Frascino <vincenzo.frascino@arm.com>,
	"# 3.4.x" <stable@vger.kernel.org>,
	clang-built-linux@googlegroups.com
Subject: Re: [PATCH] MIPS: Don't declare __current_thread_info globally
Message-ID: <20200102030229.GA4478@ubuntu-m2-xlarge-x86>
References: <20200101175916.558284-1-paulburton@kernel.org>
 <CAK8P3a2a1aY9G+Nh9fy+NU=YA_m1dxm-4SCHgydVO5kcydh77g@mail.gmail.com>
 <20200102005343.GA495913@rani.riverdale.lan>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200102005343.GA495913@rani.riverdale.lan>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=vIBadxwj;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::341 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

On Wed, Jan 01, 2020 at 07:53:45PM -0500, Arvind Sankar wrote:
> On Wed, Jan 01, 2020 at 09:51:02PM +0100, Arnd Bergmann wrote:
> > On Wed, Jan 1, 2020 at 6:57 PM Paul Burton <paulburton@kernel.org> wrote:
> > > diff --git a/arch/mips/include/asm/thread_info.h b/arch/mips/include/asm/thread_info.h
> > > index 4993db40482c..aceefc3f9a1a 100644
> > > --- a/arch/mips/include/asm/thread_info.h
> > > +++ b/arch/mips/include/asm/thread_info.h
> > > @@ -50,10 +50,10 @@ struct thread_info {
> > >  }
> > >
> > >  /* How to get the thread information struct from C.  */
> > > -register struct thread_info *__current_thread_info __asm__("$28");
> > > -
> > >  static inline struct thread_info *current_thread_info(void)
> > >  {
> > > +       register struct thread_info *__current_thread_info __asm__("$28");
> > > +
> > >         return __current_thread_info;
> > >  }
> > 
> > This looks like a nice fix, but are you sure it doesn't allow the compiler to
> > reuse $28 for another purpose in the kernel under register pressure,
> > which would break current_thread_info()?
> > 
> > I see in the MIPS ABI document that $28 is preserved across function
> > calls, but I don't see any indication that a function is not allowed
> > to modify it and later restore the original content.
> > 
> >         Arnd
> 
> The compiler can already do that even with a global definition.
> 
> The doc since gcc 9 [1] says:
> 
> "Accesses to the variable may be optimized as usual and the register
> remains available for allocation and use in any computations, provided
> that observable values of the variable are not affected."
> 
> and
> 
> "Furthermore, since the register is not reserved exclusively for the
> variable, accessing it from handlers of asynchronous signals may observe
> unrelated temporary values residing in the register."
> 
> I'm not sure if this was a change in gcc 9 or simply the doc was wrong
> earlier.
> 
> Should there be a -ffixed-28 cflag for MIPS? alpha and hexagon seem to
> have that and they also keep current_thread_info in a register.
> 
> Also, commit fe92da0f355e9 ("MIPS: Changed current_thread_info() to an
> equivalent supported by both clang and GCC") moved this from local to
> global because local apparently didn't work on clang?
> 
> [1] https://gcc.gnu.org/onlinedocs/gcc-9.1.0/gcc/Global-Register-Variables.html

Yeah this patch appears to break booting malta_defconfig in QEMU when
built with clang; additionally, there are a TON of warnings about this
variable being uninitialized:

../arch/mips/include/asm/thread_info.h:57:9: warning: variable '__current_thread_info' is uninitialized when used here [-Wuninitialized]
        return __current_thread_info;
               ^~~~~~~~~~~~~~~~~~~~~
../arch/mips/include/asm/thread_info.h:55:52: note: initialize the variable '__current_thread_info' to silence this warning
        register struct thread_info *__current_thread_info __asm__("$28");
                                                          ^
                                                           = NULL
1 warning generated.

Seems like this is expected according to that previous commit? I
noticed there is another instance in arch/mips but it doesn't appear to
affect everything.

https://github.com/ClangBuiltLinux/linux/issues/606

Cheers,
Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200102030229.GA4478%40ubuntu-m2-xlarge-x86.
