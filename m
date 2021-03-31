Return-Path: <clang-built-linux+bncBDQ2R56ST4HRBFFCR6BQMGQENERXTCY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3b.google.com (mail-io1-xd3b.google.com [IPv6:2607:f8b0:4864:20::d3b])
	by mail.lfdr.de (Postfix) with ESMTPS id 6885934F63F
	for <lists+clang-built-linux@lfdr.de>; Wed, 31 Mar 2021 03:32:05 +0200 (CEST)
Received: by mail-io1-xd3b.google.com with SMTP id q7sf418993ioh.9
        for <lists+clang-built-linux@lfdr.de>; Tue, 30 Mar 2021 18:32:05 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1617154324; cv=pass;
        d=google.com; s=arc-20160816;
        b=Jdy7uXiVJ3Ia1rdxgIQHRaO+pQXUewGD80i37TwyJJ8zaZbswDCfRaGuQiWsY+kva/
         xT4EkXwyQR2swosxSFdgP2I4dTIXtHS+IpyDJ8dz00wky3N67p3kwNK8nQij9Y6Hm/tw
         iNdzZZpkvgVzJppqsZViZDpJSblQCbC/MdWBdZftSnPeTRzJfFFJ3GvxpqCqendoDKIY
         BCbhv5MhVYYctI+k3PtMoyEoueOoWebe2oG8wbkKAkGnY9y9Z0ZKGtuDhK7/mRrEvXDH
         FydAIGSZ17yAZBmpJaOCnyuKJsgq8zjdXo99dozljiCRf7ItefKUHTNWVPSDsqVw37Ka
         0p3A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=hXDcRzr3MKd8XvRto9c5ZxCu0ZdP+C/9r77YA9nZdAY=;
        b=GmPcymswNb7N+uESKpUV3G71YGpZkBdmjhR/bd1Pob+6CfUBcxpvl3lF2rZev/m5ey
         fkxrBvzO8FytjvCTSYGZszavdbrqG5oT1kbCloUUtrdh5mzgnLCHXPNmjF3g/6iK5w6Z
         Qwbqx0so7jzawYX2SAbbHOxyeAzYenckwQGfygPqKn30RZT9QNPfrWNJTyQ47pCpbBi9
         es69E48808u/cAFDGV5oTBojoSlgWMUB+EArkWP52pjbi3oBHzzQpIQD2U/jKqPuz8TD
         1jKUMtaZ0Bz+XCmH49JtDCOV+UtArSLadu9BbnTkg5YQpm5TpZ/C5cbObUhDzoyxVqDi
         Zfpg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=sshq6hQZ;
       spf=pass (google.com: domain of jiancai@google.com designates 2607:f8b0:4864:20::32d as permitted sender) smtp.mailfrom=jiancai@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=hXDcRzr3MKd8XvRto9c5ZxCu0ZdP+C/9r77YA9nZdAY=;
        b=Q2tMz3h4q8/FpYV5JSlF2Q0ZYDzPYgUvJ4sozxSDfexDdvEFUKylA85IZlABXh/QcP
         OaJa6b2G3Tme5fOzEKwootNd04/BmZdszixkpNulJ35uYg4bZCAqvRh8O6ItHoWj0j+9
         8X6r1BxVMymHViqDSSLjxiBwS0dZZviT38BMrlW4upBlOvbh9wF2Au9bxQLErEOD2S6s
         yYaJuA2mnbwTVFYoZUUTQXdjM2wjI1AATP4+Sn5PwrNKxUNW/HDPLeijdTuCpZMiJBGZ
         ryg8vf2kPcwWbt0zo3XgWEyY+rcjaAPGx7HrZzrn4HkTqgOOZ+w0IhdEY+dT79GXNuu/
         ksKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=hXDcRzr3MKd8XvRto9c5ZxCu0ZdP+C/9r77YA9nZdAY=;
        b=RJvk0NAykaHv72kzjulGV8Pj6X178Y9HR+11NPRPHFtaONx4+u0wa1XYiRSNC6Evne
         zpzg2F0CGPpvLvpKYztyP0zcQsvxW3hYxPkAV+ydJ2UArUCjiRxMMEcole2agn/jIk62
         TXKlSFK286ioprXLucy+DP0nPcSoe06Hd4guI69WcJlKyF2kesbQ6l1IzjJgi05oqr2+
         VWOcip4FPEksj4S7g2sOuT5zzqjVCeOnVsitI6flmQiRL9RflyjIHQKHl3qeeNMMGmmB
         xH+sxtoM6WxfpqgbCqalD6RcBg2VYVh6VbN7c3sTU9hOhcp6xL+2XKKj4Tqs6bhi7lNT
         uiTg==
X-Gm-Message-State: AOAM531OC2qF6nf9THg3OUDwHBW4nCqlqoqJ6zd43aHmAtnrB8aJIasc
	QlXxNI2ns7U6s5TTXrL9VcU=
X-Google-Smtp-Source: ABdhPJxT7WwgzhhOuBAujolV2fY8Or4D8jxPRwofFwRmfgKu1qUuCeZ2ZexXrcGnJxHXX9GvRQfSSw==
X-Received: by 2002:a05:6638:343:: with SMTP id x3mr895797jap.44.1617154324106;
        Tue, 30 Mar 2021 18:32:04 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a92:d40a:: with SMTP id q10ls128425ilm.6.gmail; Tue, 30 Mar
 2021 18:32:03 -0700 (PDT)
X-Received: by 2002:a92:7007:: with SMTP id l7mr741556ilc.187.1617154323777;
        Tue, 30 Mar 2021 18:32:03 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1617154323; cv=none;
        d=google.com; s=arc-20160816;
        b=seW+4nMvEYwVilHpRakTlHpDqobAh7SbPHcjmRi9R7uqIGHwV2RSvV5NGrlBEArbuA
         LwZOLd7R9tXvnnj2xk3YyXgiJCW6XqjG5bcYD8e8oDd3z4qwr7wDi4OUoFu7Cr6kOuBv
         V9J1jG+gLPd+S5uTzBguO12dbYxM0ZmtAzmq9q8iRXF/DkKQAs3EMgIutSGUnrfrkGbI
         Sh9z+1vXenXWC9Vcbiwi145nEg8Nv4ifEQZ4eeVPRZ44j0hx3hgOOsVHbHSQPYvG4Mff
         rneuLx2us8DlI46oWWWcRrrRrM+Ut2P8QvxlNhxLfCFZyF3j9MIM0zjZSQiBYLVM5SYJ
         RGKw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=H8Y07hDLvNzX62UUhlhC8myk9QBLpL9amBPbya95S+8=;
        b=hVqBq5XV8KkrevvUiGrKqbNMvsW+06uoqohLysMZApmVDJttLDxMOGRCyT+Dbc5Qvp
         MuZtGzAiakS401gpZpSXoTK/ydchi2JXjFBuGFMkSf1jy0MOxNBjzXeVlQdK8svhk+lx
         iq3CRctzAkhbVst0CPRAt/1YIFu+mbqhnW+54jlrzdCJG1LliwFP6E8xvCr8Ra/6+Ce5
         lWGUjHp1iyLMArjvX/qz70ToFpI9OcGDmeZd7AMfeR1VABf7yJpKjarVa9Lf1Lf4i6+H
         CUmLWZ+/BRIQR70VWVdvYqVAJelBqy65vyedaQ5WOyVzjkVpeGoYkPGHlVpaj+Q1lXvo
         E2Jg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=sshq6hQZ;
       spf=pass (google.com: domain of jiancai@google.com designates 2607:f8b0:4864:20::32d as permitted sender) smtp.mailfrom=jiancai@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-ot1-x32d.google.com (mail-ot1-x32d.google.com. [2607:f8b0:4864:20::32d])
        by gmr-mx.google.com with ESMTPS id w1si47906ilh.2.2021.03.30.18.32.03
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 30 Mar 2021 18:32:03 -0700 (PDT)
Received-SPF: pass (google.com: domain of jiancai@google.com designates 2607:f8b0:4864:20::32d as permitted sender) client-ip=2607:f8b0:4864:20::32d;
Received: by mail-ot1-x32d.google.com with SMTP id v24-20020a9d69d80000b02901b9aec33371so17455571oto.2
        for <clang-built-linux@googlegroups.com>; Tue, 30 Mar 2021 18:32:03 -0700 (PDT)
X-Received: by 2002:a9d:1c89:: with SMTP id l9mr594551ota.25.1617154323238;
 Tue, 30 Mar 2021 18:32:03 -0700 (PDT)
MIME-Version: 1.0
References: <20210330230249.709221-1-jiancai@google.com> <20210330232946.m5p7426macyjduzm@archlinux-ax161>
 <114a5697-9b5c-daf1-f0fc-dc190d4db74d@roeck-us.net>
In-Reply-To: <114a5697-9b5c-daf1-f0fc-dc190d4db74d@roeck-us.net>
From: "'Jian Cai' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Tue, 30 Mar 2021 18:31:52 -0700
Message-ID: <CA+SOCLKbrOS9HJHLqRrdeq2ene_Rjs42ak9UzA=jtYb0hqWY1g@mail.gmail.com>
Subject: Re: [PATCH] blk-mq: fix alignment mismatch.
To: Guenter Roeck <linux@roeck-us.net>
Cc: Nathan Chancellor <nathan@kernel.org>, Christopher Di Bella <cjdb@google.com>, 
	Manoj Gupta <manojgupta@google.com>, Luis Lozano <llozano@google.com>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Jens Axboe <axboe@kernel.dk>, 
	Nick Desaulniers <ndesaulniers@google.com>, linux-block@vger.kernel.org, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: jiancai@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=sshq6hQZ;       spf=pass
 (google.com: domain of jiancai@google.com designates 2607:f8b0:4864:20::32d
 as permitted sender) smtp.mailfrom=jiancai@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Jian Cai <jiancai@google.com>
Reply-To: Jian Cai <jiancai@google.com>
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

Thanks for all the information. I'll check for similar instances and
send an updated version.


On Tue, Mar 30, 2021 at 5:26 PM Guenter Roeck <linux@roeck-us.net> wrote:
>
> On 3/30/21 4:29 PM, Nathan Chancellor wrote:
> > Hi Jian,
> >
> > On Tue, Mar 30, 2021 at 04:02:49PM -0700, Jian Cai wrote:
> >> This fixes the mismatch of alignments between csd and its use as an
> >> argument to smp_call_function_single_async, which causes build failure
> >> when -Walign-mismatch in Clang is used.
> >>
> >> Link:
> >> http://crrev.com/c/1193732
> >>
> >> Suggested-by: Guenter Roeck <linux@roeck-us.net>
> >> Signed-off-by: Jian Cai <jiancai@google.com>
> >
> > Thanks for the patch. This is effectively a revert of commit
> > 4ccafe032005 ("block: unalign call_single_data in struct request"),
> > which I had brought up in this thread:
> >
> > https://lore.kernel.org/r/20210310182307.zzcbi5w5jrmveld4@archlinux-ax161/
> >
> > This is obviously a correct fix, I am not just sure what the impact to
> > 'struct request' will be.
> >
>
> As commit 4ccafe032005 states, it increases the request structure size.
> Given the exchange referenced above, I think we'll need to disable
> the warning in the block code.
>
> Thanks,
> Guenter
>
> > Cheers,
> > Nathan
> >
> >> ---
> >>  include/linux/blkdev.h | 2 +-
> >>  1 file changed, 1 insertion(+), 1 deletion(-)
> >>
> >> diff --git a/include/linux/blkdev.h b/include/linux/blkdev.h
> >> index bc6bc8383b43..3b92330d95ad 100644
> >> --- a/include/linux/blkdev.h
> >> +++ b/include/linux/blkdev.h
> >> @@ -231,7 +231,7 @@ struct request {
> >>      unsigned long deadline;
> >>
> >>      union {
> >> -            struct __call_single_data csd;
> >> +            call_single_data_t csd;
> >>              u64 fifo_time;
> >>      };
> >>
> >> --
> >> 2.31.0.291.g576ba9dcdaf-goog
> >>
>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CA%2BSOCLKbrOS9HJHLqRrdeq2ene_Rjs42ak9UzA%3DjtYb0hqWY1g%40mail.gmail.com.
