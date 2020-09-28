Return-Path: <clang-built-linux+bncBCMIZB7QWENRB76CY35QKGQEHQQF24Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc3d.google.com (mail-oo1-xc3d.google.com [IPv6:2607:f8b0:4864:20::c3d])
	by mail.lfdr.de (Postfix) with ESMTPS id 19DC727A9BE
	for <lists+clang-built-linux@lfdr.de>; Mon, 28 Sep 2020 10:40:34 +0200 (CEST)
Received: by mail-oo1-xc3d.google.com with SMTP id i1sf77717ood.9
        for <lists+clang-built-linux@lfdr.de>; Mon, 28 Sep 2020 01:40:34 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1601282433; cv=pass;
        d=google.com; s=arc-20160816;
        b=WPutDYjF+3d/4uHyqwzdt+uz9sjiKTEWXKdCaJ8IvmpP/KewDC4i6egN33LwlOHNt2
         4dCYhQFWOC91sirCxkZE0HM1RXcFhRnBCvqgxv7JlSzjNXzn8RiFasKnM8/0VbXb8Sm0
         obrzzygTCq7Otr0CX7nM7HtoZiUbfu/mdqfi3HefOmB5F5kO59Z8xThzT7POLJ1qL2y5
         qDQigqQ1quDvxP8mkIFzTydh5Lz/VPoRM+z+iVdwWK5HqAFgr3fbKcIPLo13PMQosl81
         X5LS0DkirkK3BdYWm+5MpQ55CYa9sjbNglntkEGQULV75qqI9W6entK0YGhXL7KjRz/q
         W0qg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=dxYFyAqczmP/72wahHrsXo9Imjn/dzcvo2p+xdj5KOA=;
        b=fVePprcmBaBnRK6SEUJJ2p5KILLFM5jYRD/sMsjPG0vPfS+t1fz5JVG5Brvv2sK6Hp
         9Mm4SH2ZtBNIIxg8c6oU/vaczx/eSAjrXMc6u3TYzOaCBHXYlfbZIZioEOvuVH9MtxYA
         uqKbn/6W98OWX4eDrK7i704ZJS+nakRO8T9lnfrxrLcLZXc/nOZk68t1OHqx7cJg/5B+
         W8KZ+oSMpAEam0fnV62X+1jxvc0E7EohLmcR53Fgrqv+0mSKNhyrAkLqUR1CVKttqR3f
         x4jjwbMlRyg0sNL0o5N1p5KR2WBmgvver7jNlqeQBOCDVaF5sZnRN7tCEX6U6LBnYlrF
         /5Ng==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=LGz086CB;
       spf=pass (google.com: domain of dvyukov@google.com designates 2607:f8b0:4864:20::744 as permitted sender) smtp.mailfrom=dvyukov@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=dxYFyAqczmP/72wahHrsXo9Imjn/dzcvo2p+xdj5KOA=;
        b=UxUnbSqu1GdK9tTMrJKdQq/kQnVoerkt8SIwdyeDHKzctpxwyN7hQliKffJbJZ8IDr
         vBCC6Ern2lVROst+oOFjLyCJ7Gz+VAAojlMf/AiMZkXPueVvGrkpQu/pP6NQ68NTgx6q
         GQM96uG5+pIZmfpLx/rRKsz/RHh1/38kZGaBdxhvrRJA+XH0Nbg/iL5P59oUE7fI/nwW
         brERj/5PQTEFxfMZpMDRO6/7rkWWo1ejGkd2UsP2JyBcjxZlmgs3yVTvzHtqEdRRpDj2
         ILGH+EElOE6asvRpItBfmSKnw4VesJRofG61n4+k/EA1/LU4yo7WOjHJe6e7C+ZfH1Os
         7zuA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=dxYFyAqczmP/72wahHrsXo9Imjn/dzcvo2p+xdj5KOA=;
        b=FKbvk1xaQDLrTmVz2MsM3rqYxMb3Y95dV6dDeCPDWClef1IB2B6bmMXqEFfvrYH9Tk
         owoFR/xKlFDJAqOjPIOOdNwglKXL9Cc03hGOrx6cPic+9b1WNeCPs/VF/DpIF6K85tyR
         XXcC3WgWUNxLtNeDFk77w+/Zfm5bnwCm98xwNbnUBPOwmNTKFBfeM2e5/AWvdtPXS0im
         imFilxjREGqVyZtOB+3AZBM8HTUJ71kLlcg59PArxcoGPeipC5+pqj3SRJrrwzCBVtrh
         wwgfTyL+Jdr7LnD+n7j8p/iDFOn+yTFRSKqIh2a9rYyZknge9lHZeR2kozQkPbZgkSem
         xEOQ==
X-Gm-Message-State: AOAM530qZFBFJcHNiPXbtELt+XczEQkZR7qyHpSbrU5hGSqf3D7tjWf7
	Iz0TSFxj6Co0SAPQMH44Gzk=
X-Google-Smtp-Source: ABdhPJzdouwv2O7rghly5HNbgxxlTuALwSKEldahhhaaSsIII8NE4mfSwFNzmHHo/FIvAMHgwd69cQ==
X-Received: by 2002:aca:d744:: with SMTP id o65mr286124oig.38.1601282431960;
        Mon, 28 Sep 2020 01:40:31 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6830:1f0b:: with SMTP id u11ls81509otg.3.gmail; Mon, 28
 Sep 2020 01:40:31 -0700 (PDT)
X-Received: by 2002:a9d:65cc:: with SMTP id z12mr227575oth.301.1601282431590;
        Mon, 28 Sep 2020 01:40:31 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1601282431; cv=none;
        d=google.com; s=arc-20160816;
        b=Apq/UNFFm2NTbUoOvyWCqefvlwe6E4aquLUM9mMepOoPLvfAgTpf0ZDBBJmuon1JOi
         okRiwvdfy09nh4n4AZ+JbdhwnzJVJmcZpYzeSJOL4xpIyEvp/3jcoW3JaB42kfBbNih5
         Se849IO9AaYigHO0GQootlF0vBhb9pzNBww6nm3nxXVtrbUxSYFnRJDwjDV+aPiYAjQe
         ISO28pNmbDwir4Azyk0EWipWaWljDZ4RW9amdflvJC8T4s64cagWSvdf0vNK/nKoDxQ1
         cQWC6iQy2MIAaE4U4If0fVaNN0/GjMnxjzdmQ+2cwmFqXzXv2wLonrZasR6gznfPYhdr
         dsqA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=iqYQ5sz+ArIYSfmlt3OgrHWYttBziLhTw7xUILWTUa8=;
        b=OtrvVYmxQd9ifIAsa4H0cq0s/1I8wsEkLgh0FfXFjRh8Y/nrlw/q1oYMocGQ9ixv3E
         DUEARUN+fQBjOKmTJVwuyZZH/wMasjZezBrQkxdrJTjHv5htalvowNva9SJ9Ox8xqdIw
         RV6opDhFNVDYpo0rI3zsERF1w4hjMPa+MUkaKEvZn8brXsQey4/jXk5V9FVebD9wbVnl
         r5d4lOzT+hDj6UdsqKAJ17inFbUHGNGqbJNAIwC8bx7VKTnPCdc5I1GQ+ERv4VLDVp+p
         sdWv8rUwAMQC59zZUSwIs9I874eWJ4ybDllp1aOMx0N7oGAediJ1CA2ZVCOX2VgWXRO2
         rbEA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=LGz086CB;
       spf=pass (google.com: domain of dvyukov@google.com designates 2607:f8b0:4864:20::744 as permitted sender) smtp.mailfrom=dvyukov@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-qk1-x744.google.com (mail-qk1-x744.google.com. [2607:f8b0:4864:20::744])
        by gmr-mx.google.com with ESMTPS id k144si29470oih.5.2020.09.28.01.40.31
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 28 Sep 2020 01:40:31 -0700 (PDT)
Received-SPF: pass (google.com: domain of dvyukov@google.com designates 2607:f8b0:4864:20::744 as permitted sender) client-ip=2607:f8b0:4864:20::744;
Received: by mail-qk1-x744.google.com with SMTP id c2so227009qkf.10
        for <clang-built-linux@googlegroups.com>; Mon, 28 Sep 2020 01:40:31 -0700 (PDT)
X-Received: by 2002:a37:5684:: with SMTP id k126mr366051qkb.43.1601282431060;
 Mon, 28 Sep 2020 01:40:31 -0700 (PDT)
MIME-Version: 1.0
References: <00000000000052569205afa67426@google.com> <20200927145737.GA4746@zn.tnic>
 <CACT4Y+Zxt3-Dj6r53mEkwv24PazPzTxQ7usV1O+RB0bk2FzO8g@mail.gmail.com>
 <CACT4Y+ZZH76qg810RzGp6FDLTxJWVqZgkrXSxqgq7AjpPYG9XQ@mail.gmail.com> <20200928083819.GD1685@zn.tnic>
In-Reply-To: <20200928083819.GD1685@zn.tnic>
From: "'Dmitry Vyukov' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 28 Sep 2020 10:40:19 +0200
Message-ID: <CACT4Y+bPFASnmFRKpQ=KY1z+RnTbGmkPU3aikzdXZpKkV03D9A@mail.gmail.com>
Subject: Re: general protection fault in perf_misc_flags
To: Borislav Petkov <bp@alien8.de>
Cc: Alexander Potapenko <glider@google.com>, Marco Elver <elver@google.com>, 
	syzbot <syzbot+ce179bc99e64377c24bc@syzkaller.appspotmail.com>, 
	Arnaldo Carvalho de Melo <acme@kernel.org>, Alexander Shishkin <alexander.shishkin@linux.intel.com>, 
	"H. Peter Anvin" <hpa@zytor.com>, Jiri Olsa <jolsa@redhat.com>, LKML <linux-kernel@vger.kernel.org>, 
	Mark Rutland <mark.rutland@arm.com>, Ingo Molnar <mingo@redhat.com>, 
	Namhyung Kim <namhyung@kernel.org>, Peter Zijlstra <peterz@infradead.org>, 
	syzkaller-bugs <syzkaller-bugs@googlegroups.com>, Thomas Gleixner <tglx@linutronix.de>, 
	"the arch/x86 maintainers" <x86@kernel.org>, clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: dvyukov@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=LGz086CB;       spf=pass
 (google.com: domain of dvyukov@google.com designates 2607:f8b0:4864:20::744
 as permitted sender) smtp.mailfrom=dvyukov@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Dmitry Vyukov <dvyukov@google.com>
Reply-To: Dmitry Vyukov <dvyukov@google.com>
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

On Mon, Sep 28, 2020 at 10:38 AM Borislav Petkov <bp@alien8.de> wrote:
>
> On Mon, Sep 28, 2020 at 08:06:19AM +0200, Dmitry Vyukov wrote:
> > Maybe it's just a random silent memory corruption in the end?...
>
> Oh, the rabbit hole goes deeper. But if it is corruption, what is the
> common element in all those? All those guests have run on the same
> physical machine?
>
> If so, you probably won't get any logs from it to search for MCEs or
> so...? Maybe the GCE people can do some grepping :)

I meant the kernel self-corrupts itself, that just wasn't detected by
KASAN, page protections, etc.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CACT4Y%2BbPFASnmFRKpQ%3DKY1z%2BRnTbGmkPU3aikzdXZpKkV03D9A%40mail.gmail.com.
