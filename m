Return-Path: <clang-built-linux+bncBC3ZPIWN3EFBBI4MUP2AKGQEXBCC6AQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ed1-x53c.google.com (mail-ed1-x53c.google.com [IPv6:2a00:1450:4864:20::53c])
	by mail.lfdr.de (Postfix) with ESMTPS id EB09519E6CA
	for <lists+clang-built-linux@lfdr.de>; Sat,  4 Apr 2020 19:38:43 +0200 (CEST)
Received: by mail-ed1-x53c.google.com with SMTP id w6sf8132344edq.3
        for <lists+clang-built-linux@lfdr.de>; Sat, 04 Apr 2020 10:38:43 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1586021923; cv=pass;
        d=google.com; s=arc-20160816;
        b=IxDck/fPiQOrRXEXJNSF4nizTLl76+wSygFjitHjRqOwJ0wnMh2w3VFinWUEH9AyAu
         6tCfmdnkWBLesBBQwjG6E1xBrJJ4H8jevXBEBnXj2zH2EyUkaKSOxpQAiqF/R8rfX7r+
         +RCdjZ8Sk5uG4DyLz7a6ZP/jH9EWWQqq6sOdjP9B/9hmXNr3sTCq3SvYB75QHrRp/h44
         c9ybq3D2RmA6HGdPbdgAqveh2YfKVzwfbpRyelXsHIezPbIU/DEeV4MdE0QwBI12R+V8
         si5vFEOGj4p1k8cqeogbsK79Glo94RT9V5Eku03LQW/kcSfr1EwTDjBTB0wVnkj37o7o
         vgUQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=uKybw0DlS/W6glPFwLsnyY2WzTP/XvV7KEdaWtWxOqU=;
        b=IMhjwCpoMAbKAlIdaQNnHU16FE2CYs8TUFVGQZE1HYQApwmxG6fmiq61tq2tlcQ8Md
         P+xNR3CiVZ8wq6Pe144fCS0STKLcOAX0T3mKMFfd3462djm9gq2DZizQOJqCiFo8WejS
         EZ4T6m8aOdwNYfPHANIDBvWtktKNecRXB7LvEGIBdb3w7cpkvMkRiXoh2BzwbofhtOf4
         uvl+TL6l62xpH4a8i2ubk2Z2JCAYB0l7vaF9FFTfH+FQD63yKkZybFo1A5ZxMZ3bgHVT
         beMUJDjjHtR0N0S70i/Ipz+s+dl2HC3yYT2Aqnf2KpsJFeOcawzuF5hjAcdcO2PgxCxQ
         JlxA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linux-foundation.org header.s=google header.b=al4IMbCE;
       spf=neutral (google.com: 2a00:1450:4864:20::141 is neither permitted nor denied by best guess record for domain of torvalds@linuxfoundation.org) smtp.mailfrom=torvalds@linuxfoundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=uKybw0DlS/W6glPFwLsnyY2WzTP/XvV7KEdaWtWxOqU=;
        b=eZ64cKXtwViC9bGrU1tALWZv9RQuskVdS4xxmo0tZ68vHjbwN42BigQWxkZ+rynSfV
         S7v89EniwYR5xP+aEdKCz6aQoyZuoQEJCXD2yUs71MgFZqYFLz0+osBH/ZhknyR3APBW
         Pv37/oeaHCoYG7sk3G668//sjB/mo5LpeR3+3x4d1z3U2clsnnUUIUUW8pk2/1Z6K70M
         ktZ4li4Q7Jcr3BCvEWVfjqAxqOHEw3obRjCWssfmFCFsKDaGxEb20dmZqfQUccfkWSyi
         6G5VNLcdRKwZba8v3hU8Dr0VADvbQUf7VG2TqZOflwY6o7eodixn7DkHcCKeb5nxYsAB
         Fanw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=uKybw0DlS/W6glPFwLsnyY2WzTP/XvV7KEdaWtWxOqU=;
        b=RFozsRTtB6TDw1SW+n8fVOj7hy2jw1E2GxQI6pOwHNcmqRYlHQrj83XV/F1QiO3ksG
         cxqnbZZ8iI+J7hA0Ud7Ix2CIYxtDA5ozrVTFNUbwiXXX4BqSmAsPc0ecA598lo7lbCqC
         Hg48s//2A+XZxv5um/oblfPTygAMIZojbXf1oQDm096Dv+qZ39ZWk0YhZknlbX/94p4T
         qeVPKL/pVp4IfZI7FzEVc8OPPQvZs5aRWO8kU+JN/DvjsbdMT3ggKDAiECDqvG/299AC
         tH3uGkgSOAfh7Qqa2zvpCPMywti6zpjv9OFxgH1iuGSUVWkSaBQX+3Xp/Lc4v/Sd9Iqr
         eYOw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0PuYshgloDs9ufOnZJCH+BOcoqSPA8lk8X34UUQV+FdX7xg+KknkE
	eg7zZAWWs1qqpI3HTBegfvA=
X-Google-Smtp-Source: APiQypLiBwU7fO2UwBB0LXQ1FSz+8zaIAvnRjxU6cOZh3le/Te67LC0m5WEHmWg0OdQhYZ9WiNuWFQ==
X-Received: by 2002:aa7:d288:: with SMTP id w8mr13089022edq.224.1586021923708;
        Sat, 04 Apr 2020 10:38:43 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a50:f290:: with SMTP id f16ls5110250edm.6.gmail; Sat, 04 Apr
 2020 10:38:43 -0700 (PDT)
X-Received: by 2002:a50:c30b:: with SMTP id a11mr12954839edb.285.1586021923047;
        Sat, 04 Apr 2020 10:38:43 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1586021923; cv=none;
        d=google.com; s=arc-20160816;
        b=TfoNV6MfbTlcmBo64O0ohIqDdpB8wJp4mj1ukSqspXqRKvfztsn5IWABbdZP27CGZ1
         xPvRwqwyhyXEOJuXGYvPrkAe8nCYtT/xAK8lY20VE23Cj292FqLedSrArDtLnoK+cu+1
         qfgsYqL/Pzs9xlejIaSI6VYSezdRJyCzJK9GzfWYfxF6NxO1SxxKrlBijn/qOFg/S0QF
         pspYe99CjpipF+wq4Ay24SUIZMjT3o2LZ7CXA/lDW0bG4AQYvVktxWRLUTanYfrhxJP6
         9zzJb5P/Cql/n5ZXbAcTHOQiJm6xJbxs0qehR9USLBaI2bZIJRxHscubSLYP0aK+Bg9T
         PCSw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=p1ZJcdAUzE9Vyh44Y4ha24xHv2g0N2dp6kI2xhyw/Z0=;
        b=UgNrcGdj2MKcmtya7P4QVdZb3bIGY9DMW+YVPH6CpiJ2aFD6nbO5Xl4ILn8UFoMZCw
         dEewVESd29l3ro3wfn6WsNkxPWN/CAuNMef0p1j6SH9D8DKv5TWkGzLC8PXTAUixezrb
         03Etd7CY/kxeJUjHKuFOWpeLLUokTHk/3Av+vh5Wj4sX7/b9T2xhAc9LBZVDDtZDjM84
         X4dLfYJzVNzBkRHyt7UDcMVlKcf1FLbqA/5O0U0HBphFrMlXqzygrQF9U3n1JWTyDlOa
         jK+mRGbzFJT9hhgqkfzVNgLOq6oDhPjzhoz3yDAIol7j3CVsfjs8/XRpLIJATBv9oqRq
         JHTA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linux-foundation.org header.s=google header.b=al4IMbCE;
       spf=neutral (google.com: 2a00:1450:4864:20::141 is neither permitted nor denied by best guess record for domain of torvalds@linuxfoundation.org) smtp.mailfrom=torvalds@linuxfoundation.org
Received: from mail-lf1-x141.google.com (mail-lf1-x141.google.com. [2a00:1450:4864:20::141])
        by gmr-mx.google.com with ESMTPS id be1si625566edb.3.2020.04.04.10.38.42
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 04 Apr 2020 10:38:42 -0700 (PDT)
Received-SPF: neutral (google.com: 2a00:1450:4864:20::141 is neither permitted nor denied by best guess record for domain of torvalds@linuxfoundation.org) client-ip=2a00:1450:4864:20::141;
Received: by mail-lf1-x141.google.com with SMTP id f8so7057546lfe.12
        for <clang-built-linux@googlegroups.com>; Sat, 04 Apr 2020 10:38:42 -0700 (PDT)
X-Received: by 2002:a19:ee0e:: with SMTP id g14mr8664932lfb.9.1586021921709;
        Sat, 04 Apr 2020 10:38:41 -0700 (PDT)
Received: from mail-lj1-f182.google.com (mail-lj1-f182.google.com. [209.85.208.182])
        by smtp.gmail.com with ESMTPSA id r30sm8475920lfp.50.2020.04.04.10.38.41
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 04 Apr 2020 10:38:41 -0700 (PDT)
Received: by mail-lj1-f182.google.com with SMTP id t17so10246740ljc.12
        for <clang-built-linux@googlegroups.com>; Sat, 04 Apr 2020 10:38:41 -0700 (PDT)
X-Received: by 2002:a2e:7c1a:: with SMTP id x26mr7366641ljc.209.1586021529661;
 Sat, 04 Apr 2020 10:32:09 -0700 (PDT)
MIME-Version: 1.0
References: <20200324220830.110002-1-ndesaulniers@google.com>
 <20200403231611.81444-1-ndesaulniers@google.com> <20200404160100.GB26298@redhat.com>
 <20200404170604.GN23230@ZenIV.linux.org.uk>
In-Reply-To: <20200404170604.GN23230@ZenIV.linux.org.uk>
From: Linus Torvalds <torvalds@linux-foundation.org>
Date: Sat, 4 Apr 2020 10:31:53 -0700
X-Gmail-Original-Message-ID: <CAHk-=whfh4Q_UiOo9uYdXVsggbLhCr4pRsB4VAWMhgZ2X9d_sw@mail.gmail.com>
Message-ID: <CAHk-=whfh4Q_UiOo9uYdXVsggbLhCr4pRsB4VAWMhgZ2X9d_sw@mail.gmail.com>
Subject: Re: [PATCH v2] x86: signal: move save_altstack_ex out of generic headers
To: Al Viro <viro@zeniv.linux.org.uk>
Cc: Oleg Nesterov <oleg@redhat.com>, Nick Desaulniers <ndesaulniers@google.com>, 
	Thomas Gleixner <tglx@linutronix.de>, Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>, 
	Peter Zijlstra <peterz@infradead.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, "H. Peter Anvin" <hpa@zytor.com>, 
	"the arch/x86 maintainers" <x86@kernel.org>, Sebastian Andrzej Siewior <bigeasy@linutronix.de>, 
	Andy Lutomirski <luto@kernel.org>, Sami Tolvanen <samitolvanen@google.com>, 
	Marco Elver <elver@google.com>, Brian Gerst <brgerst@gmail.com>, Arnd Bergmann <arnd@arndb.de>, 
	Andrew Morton <akpm@linux-foundation.org>, "Eric W. Biederman" <ebiederm@xmission.com>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: torvalds@linux-foundation.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linux-foundation.org header.s=google header.b=al4IMbCE;
       spf=neutral (google.com: 2a00:1450:4864:20::141 is neither permitted
 nor denied by best guess record for domain of torvalds@linuxfoundation.org) smtp.mailfrom=torvalds@linuxfoundation.org
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

On Sat, Apr 4, 2020 at 10:06 AM Al Viro <viro@zeniv.linux.org.uk> wrote:
>
> FWIW, I propose to do is the patch below (against the current mainline);
> objections?

Lovely. Simple and clean.

               Linus

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAHk-%3Dwhfh4Q_UiOo9uYdXVsggbLhCr4pRsB4VAWMhgZ2X9d_sw%40mail.gmail.com.
