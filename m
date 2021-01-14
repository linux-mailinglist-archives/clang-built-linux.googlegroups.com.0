Return-Path: <clang-built-linux+bncBDHYDDNWVUNRBRPY777QKGQEABVO7DQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd40.google.com (mail-io1-xd40.google.com [IPv6:2607:f8b0:4864:20::d40])
	by mail.lfdr.de (Postfix) with ESMTPS id 7FF302F5C2C
	for <lists+clang-built-linux@lfdr.de>; Thu, 14 Jan 2021 09:09:42 +0100 (CET)
Received: by mail-io1-xd40.google.com with SMTP id x7sf7097953ion.12
        for <lists+clang-built-linux@lfdr.de>; Thu, 14 Jan 2021 00:09:42 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1610611781; cv=pass;
        d=google.com; s=arc-20160816;
        b=eMC5b2gPcWEHiAn8mfDVBq2J+mNvjb9h4G5HZwCsEYcEnh+QUO9mapWjRyRlLwqqTC
         qY98ZbZTAl3SGszF+tnfyL8iXIl7XxQab3Gc0/yvrEGlC4zzVYgvineil2p5Dyf+s7wg
         DEH+e6pmVtZYbmc0274gqbNCXYFms4NpV4z97BNjDHu7Tq/YH5jZFl+bHPj4i3n99iAQ
         Ix9Hm1IRynyeXCjrgTwBcnazd7KXE8xckyeuia1L5CiBjXUKaxUzXEDOkWs0OCBErBj+
         NWaKl9W6ZbP3d+IMYzmY2o6cScLTAUDeFe6cGePBs+KREkhwcHeTJP22hF/spEMGh0Sq
         vsKg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :reply-to:in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=DMWw+otGmuWzDNX7mD/+8VKubtJaBBGEdbxlWaHumos=;
        b=QuHBxrisUNMDp5BMWo8E6EsIli3Z6kt4WsX/85oJ+1khGPvmOnXaYBWzz5CnU9dwt2
         aJcSLj3cHlUc3ju7G2H2LTj2W/PWQjDZXYcA44sOAHvkQUQPQdlRS6Ur/8HrKnLQBS3S
         TXY8n2nXxF0fXQxlfOHFNwTm7vuEDF7B9+gdgSIiuKEpkwlmol+uHUe8w8BcRM1PpGVU
         AVOIFxaCzCBnAJDT2/fHQU1TaCP0AOU6cNi9+JasfXA/jdYMqA3N/UnZG5+l0iOTNi7+
         /vmJEzHmyPDUC9VzWT5ezRBNFJ8mB6vzK+m8IVaEuvyk+XkvVpiM9b4A9A8dcYavKgqS
         4Xqg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=KPjP628f;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d30 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=DMWw+otGmuWzDNX7mD/+8VKubtJaBBGEdbxlWaHumos=;
        b=rcN1uWP5tZ2eSIoht7uQVqnTBPLkoLLWzCpjVVhJ+ZylJ7ts7r1i4A6vt6q/RINJ4P
         a9s0/2jrYdIRVfBsSO6HP2smXqavoSQBPVxK4fUdDt10IKASzP88trN7aHJJm+kRZI6a
         RV/qrA+yP63hkcqM8zo2OFW0Zrlfo2ZuTnYUoSKOiw+o9nKkpNhvIum12l+qIlwJXT2V
         G/AqN7vZg6kYD9+VGX/+tZcE1ujwMmycutY5CKmOpvDMRNKzSjfNtKIVH7a8SJgbXZ69
         /eSKlrVVAqNx3kc0RxeXJxszQH50B/S/8Q+zxBfZSYfFOs0JO0L/z52Z9fY1+h0aG8Iy
         lyYQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=DMWw+otGmuWzDNX7mD/+8VKubtJaBBGEdbxlWaHumos=;
        b=m8Vt7JZmtiPnbj327WYORhyxMYwqXXpE6G/6y2AK1Dbf88SQPx9uxLj7L81S0tN3eE
         ztl1U0VgQZ8ln3Rwyfd3dAdtN27fuK3psaJboRRNW+KsYuLCfcPDcQhjjUYLAa3nBCTW
         lNeECGA4PzYfOZXd8BhpIhGHL+ZzpzsCILNzocj1WOl6he8091ClK7/jWyBs5aZq1RYU
         pnSAzqumZVQ8VGK8ZnhZ3AKa9osZDX1lw81iXamu8DGt50smg00DVXz81rgiaSChjawI
         55QuHOswRGstAFlIEwQCl0zmbkjCwS3858+G3wICE+nlqX4MZVhpD+UVZ9YSGO27JApx
         W0/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to
         :reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=DMWw+otGmuWzDNX7mD/+8VKubtJaBBGEdbxlWaHumos=;
        b=ZOHLmQMNWW6orglwleyVCLpP/+qWcf635DaUxtL5nozFJryVhWoUdkNushb/J7oAVh
         Bh019UNOOJFqzPvwGHq5KRaB8O3OtDWkNK5XgVySGyCgrrd/3F0zNy0om/c0vR36h4rX
         TDGTksuCEZQA2DDMe1e071704FZRln81IE8+aVZkohgE049PvOowrhx9d8KJMWf9DLIj
         yB8Qy+6p2GP2RaW8ocuxRz2dwerGx9wA+6g04K0qvIRjiiBxGEc9LQWIfsVmL4wqlYr5
         3VikcuNvaIJIPCLG6idzy5yw80uZ5FtyDd34YTceaa/vOZWJXI6apfAmSfLGSAyr4MTA
         xqyQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532QF8lfEDbminzTHrqeFNNqTs/fLhhKpCSgMg/XAF3ZzU+8N2o4
	iPsQ9bH5r1SWBqUM93/nVDM=
X-Google-Smtp-Source: ABdhPJy90RPHpwGaTiyqKr9PrGUwZ+i6yDWV1TxCtGEAOx8XjzQ/G6ApsiOB8BfVvYQ1mCYr3cQ8dQ==
X-Received: by 2002:a92:418d:: with SMTP id o135mr5812047ila.213.1610611781549;
        Thu, 14 Jan 2021 00:09:41 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a02:6f53:: with SMTP id b19ls569062jae.8.gmail; Thu, 14 Jan
 2021 00:09:41 -0800 (PST)
X-Received: by 2002:a05:6638:2686:: with SMTP id o6mr5597229jat.68.1610611781142;
        Thu, 14 Jan 2021 00:09:41 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1610611781; cv=none;
        d=google.com; s=arc-20160816;
        b=M9yfWESSxn2sF/tus4LbIs6jVgkP9C5uVAZGMM3B/DBAZNZ1pKYuO4g5EQgIvWs7e7
         u/2A1Es1cZ8MsqInVkRBqMljQU2P4l5JELYwrRiKnHRjOpuOpHx4y61AI7aP6a/KVJJm
         I6lPMUtEyzNZxJ0hgO/Ktu4mDYprj9i1oKEXf8/8uS6voc/z0FnO6y5QJPGhYklvD/h/
         RflxTNX/0fGPjxHHWPd996tPD+nEVQDVADK1d6aSMLUpB4ON/6XcuOX40ZlYRphJYY1N
         gtCTjrBp5rmpnNFTFq1Q3JjIK4fqb77J1OELabB5byuYPEgV0EvKSpYisf7x7Hhu4Pjb
         GNvg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:reply-to:in-reply-to:references
         :mime-version:dkim-signature;
        bh=yJph4w0lqPRbllahTQ9qs1P5veXDXR9nP72ddW4htp4=;
        b=nG9HCn2mytl08kJ7fyrkB2eHoFQXsIXPUzcB8ueHe6iQrMVRdPQRZwKKVyWY/MvD07
         Y3S8Hp/0k4scKeeTneYfzCo59U67jBKllByDmSUCBaal77R22gi4qWodMURCfCPqe1RQ
         XX0u7dC7l3+63gdSfrq5TEJqcQ0DLgLttQftirbvVQS4waEdHBPis5mmt8EyOzCnkmOq
         8B87+TPlgWFa+TQ7fa+Tk6T9n1ArImTb1pc1+Rxcp7aa2cujE+c7Mm4HjAk+RBMslhCb
         HtwhzOJiGTEkR7mUhKweoNWVPmICMdQwDGdQdzIRFr3xjoVnGj+qE6rVJyyW/PDsVT3a
         zhrQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=KPjP628f;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d30 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-io1-xd30.google.com (mail-io1-xd30.google.com. [2607:f8b0:4864:20::d30])
        by gmr-mx.google.com with ESMTPS id y16si525080iln.0.2021.01.14.00.09.41
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 14 Jan 2021 00:09:41 -0800 (PST)
Received-SPF: pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d30 as permitted sender) client-ip=2607:f8b0:4864:20::d30;
Received: by mail-io1-xd30.google.com with SMTP id n4so9437070iow.12
        for <clang-built-linux@googlegroups.com>; Thu, 14 Jan 2021 00:09:41 -0800 (PST)
X-Received: by 2002:a05:6602:2f93:: with SMTP id u19mr4461318iow.110.1610611780953;
 Thu, 14 Jan 2021 00:09:40 -0800 (PST)
MIME-Version: 1.0
References: <20210114042420.229524-1-masahiroy@kernel.org> <CAHFW8PRr6kjEE=7BSzWo7itSZgAhy_dhmnSe1yq5wMfDwEyJ9g@mail.gmail.com>
In-Reply-To: <CAHFW8PRr6kjEE=7BSzWo7itSZgAhy_dhmnSe1yq5wMfDwEyJ9g@mail.gmail.com>
Reply-To: sedat.dilek@gmail.com
From: Sedat Dilek <sedat.dilek@gmail.com>
Date: Thu, 14 Jan 2021 09:09:29 +0100
Message-ID: <CA+icZUWBUiM2XgGW6Q_KHT1d=1M5nsu2rRaf--xhTR90u2tjeQ@mail.gmail.com>
Subject: Re: [PATCH v2] kbuild: check the minimum compiler version in Kconfig
To: Ilie Halip <ilie.halip@gmail.com>
Cc: Masahiro Yamada <masahiroy@kernel.org>, linux-kbuild@vger.kernel.org, 
	Paul Gortmaker <paul.gortmaker@windriver.com>, 
	Linus Torvalds <torvalds@linux-foundation.org>, 
	Nathan Chancellor <natechancellor@gmail.com>, Nick Desaulniers <ndesaulniers@google.com>, 
	Will Deacon <will@kernel.org>, clang-built-linux <clang-built-linux@googlegroups.com>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: sedat.dilek@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=KPjP628f;       spf=pass
 (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d30
 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;       dmarc=pass
 (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On Thu, Jan 14, 2021 at 8:55 AM Ilie Halip <ilie.halip@gmail.com> wrote:
>
> Hi Masahiro,
>
> > +       #elif defined(__INTEL_COMPILER)
> > +       /* How to get the version of intel compiler? */
> > +       ICC     0               0               0
>
> According to Intel documentation[1], this should do the trick:
>
>     ICC     __INTEL_COMPILER  __INTEL_COMPILER_UPDATE
> __INTEL_COMPILER_BUILD_DATE
>
> I don't have the compiler installed, but I tested this on godbolt[2] and
> looks fine to me. What do you think?
>

I remember at university I used ICC successfully with building a Linux-kernel.
Anyone has used ICC recently?

I cannot remember to have seen any bug-reports regarding ICC to
linux-kernel or linux-kbuild mailing-lists.

- Sedat -

> [1] https://software.intel.com/content/www/us/en/develop/documentation/cpp-compiler-developer-guide-and-reference/top/compiler-reference/macros/additional-predefined-macros.html
> [2] https://godbolt.org/z/E5PE6f
>
> I.H.
>
> --
> You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAHFW8PRr6kjEE%3D7BSzWo7itSZgAhy_dhmnSe1yq5wMfDwEyJ9g%40mail.gmail.com.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CA%2BicZUWBUiM2XgGW6Q_KHT1d%3D1M5nsu2rRaf--xhTR90u2tjeQ%40mail.gmail.com.
