Return-Path: <clang-built-linux+bncBDYJPJO25UGBB7NX57XQKGQEQWG5IXI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x438.google.com (mail-pf1-x438.google.com [IPv6:2607:f8b0:4864:20::438])
	by mail.lfdr.de (Postfix) with ESMTPS id 8EB87126EC0
	for <lists+clang-built-linux@lfdr.de>; Thu, 19 Dec 2019 21:22:23 +0100 (CET)
Received: by mail-pf1-x438.google.com with SMTP id b15sf4457750pfo.16
        for <lists+clang-built-linux@lfdr.de>; Thu, 19 Dec 2019 12:22:23 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1576786942; cv=pass;
        d=google.com; s=arc-20160816;
        b=RIwNTOUxoDxOdnaX5DdK11zEr3tYmmL8t6SYa5AjOgg7sIqK5Ah616izuhmi4eulhr
         L1unVjjTpSEJlUFXZKR04sV3/M2DaSF5FRNZqDgb2Lvjtt5Irp4tvIwVqU/7IMjvwsBs
         vWnFdDYWu686WSc4HRQQsxlWPvgfcmd6gxetIOr7YIQkSDfYkF5/i+AvPyNVRjnfVevp
         uzMOHylJkZ8dWYxU0K/Be02Ce4JA8ylkGBHXuuhu/2byYoIxqideNwXqibHK0jMdIhTZ
         lojo70mIg51dKwXfslqodCSyzbUZQ15RYYZESg0mP+MyxHaR6HOUgrpiRuKhLnWZFLtN
         QNww==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=0YdLUw/3dpmEkhxet9eI6tjM6n7DCuuwkWgo2m+a0n0=;
        b=zD+dvgAaQOeh5j7MpOC3Jmth9XQuSKjMkdUCtYQEktHJaCkwx6LDHKQMqZdNgk8Auu
         cCzZw2oDo3htpHzgnMoACQD+sP5oKAB7lhqMiAWth+cYQ/Jii3rbqrpF/KqGZc0HaEB5
         waGO6MeI26NDyui7YOZcDYhtCfdGLCSKQ2NLlAhDtZC7kcXRAd2ItUnnC/vXkO/dOHPo
         CZvAcXl1oUDLcDSOSPzXLP4HYtFAGPIDXp2qjTC9kuKfoW8u/gkFMiSEvKdf0k3UiNxY
         vnF6agk5jRiJU5tTzG3oAXcXF0I2dOem5Ic1LasEjFyf77w56Wk/MAq7nkxFvKdGls6u
         bQWw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Cxx1pArM;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=0YdLUw/3dpmEkhxet9eI6tjM6n7DCuuwkWgo2m+a0n0=;
        b=rnKXrfVK+liTar37Q+6IXmbPV9dL9H5jKp8r8y5WpXi2kHNIip/wpKsIVSRK8uP3zA
         49uOzse6j5kRLlqw2DV4jelTexyB0QI1Uep6R4QaSr4k1IlyUjfmvraF4alMKpZU1Um1
         NEd1mEV2pQ4f6WXki9SX6iB8QUF9pGHnXRqlxC7L/CZPk3t3uY9uB4TLEBay9h+RoB68
         RTcuwhqgSG9w5vsw1PIORjbGFNR7sFbyFGjCSIDwYRT6ohFwWkQSQ7UEGgGJYEAPbncD
         AjtnD20DU6ufL7jwGEjOX0iLyt+T7EGE8vtyLb7POKYy5g0S7s6rjh1mKhh3E0hd6B+i
         rT6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=0YdLUw/3dpmEkhxet9eI6tjM6n7DCuuwkWgo2m+a0n0=;
        b=KCwrxc2LCNqCFr/xlP+ji/pRk0lFmFT/QediuIgrX02yB2MwQeJ4Z12zuj1ShJFYHt
         mgYJBpP5hIyqMoOOUajIZC326Nl8OV0JelZhbE05qPyRO1J+XTRVLpBcQUjpffe3x0JA
         x/Dph6LB6Oh8zG8Md14Bc01dZHP6wjpsUkDEfWJGs/iSxYBsEMPcpcr3OcS9IpRsc9JM
         wgXXorj4/jl/rBZhpzQnc1TKwEqvTAbmJgF66uOWUZfOYdrczmCyrG7Yo+fibR/LZWkw
         iFE2lj5aMrOhf7Zpw6TF6uWtNoN/ZLvc+iGW9C6hquWyVpCOO2UtEeitfdcnfRsOcgkL
         kfzw==
X-Gm-Message-State: APjAAAVZpAYSKz/THDnMVb1in2F1f1LMbtZzmtOSeX65CbHzZiUwVO9+
	yLrj1Jqeec3LuLA26iMQ2i4=
X-Google-Smtp-Source: APXvYqy+xyOEc96hBBHtkZTkqt8Y/9ha+50zkrnOX9y4E8VkOgx0sEYbZkriGQtf8EqADrSaSdnsIQ==
X-Received: by 2002:a62:3141:: with SMTP id x62mr11955478pfx.214.1576786941904;
        Thu, 19 Dec 2019 12:22:21 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:ee05:: with SMTP id e5ls1778559pfi.5.gmail; Thu, 19 Dec
 2019 12:22:21 -0800 (PST)
X-Received: by 2002:a63:4b50:: with SMTP id k16mr11066459pgl.386.1576786941434;
        Thu, 19 Dec 2019 12:22:21 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1576786941; cv=none;
        d=google.com; s=arc-20160816;
        b=JK3Jj+48ctltLvmjINxDxmJsy7AWBU9fEvNyViEjjJT4GLJWGlbERnxGKemwujHXNp
         pFPPBLrzuphIBEeWNx5liwC2p9VRBlOMw6BM+qghoRZxM/42U3FuQp9WKH5tVdFBf7Eh
         BQq0H2HVXJ9iiF1WMEqaiRzdFnDUis8Yyxl83FtCRPIK5kV629MnfIgjQevUVF2TF+Px
         QFNStprZY5duew4qYzQbmcfKyq30nkNNYA9qPy+ILsuvx7Fte0dJJOWZVxGZY2PvaUEM
         PVVmREmFe7gATO98jaI90YoXeeFagENhkzCnQCplrWQyT/+OyIT62hQnD6cW28dTiNKz
         ukjA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=PsW/j1Crrs313MkKDSnDNbKlrshzMf4od6PZBBKr95I=;
        b=KUsOBUo3SaXsEXkvqSvkNyIiPVwEMxLXPDNSCPov+FCZyEaRCBIkglYg9MRtIbglNi
         Etg5Av7/ZhuG+nvZvJ3Qsbnq4+G4Nic9f39KBSH+37OjXwGfJYJBNoHODajKHWPIHW/1
         Ce5K6k9/DB8gn5+wesg1nRr8w07Hej20y+J0sXPrQewWhRrCodwghx8qnfrYAf7/l9pc
         4pVnAYGd+WpWCuqKFYdRgcAiyOSOP5xSYFO12nYNp/Wnwg6hSDhf5KJVLiEfwU5XWz6Y
         6ccyXN7rLE6+Sm0YinJg+gGUddRKhcNKRqhVH+jQm+iD/+b+oLJaR9iFWLVutQk9oM4s
         BxLA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Cxx1pArM;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x542.google.com (mail-pg1-x542.google.com. [2607:f8b0:4864:20::542])
        by gmr-mx.google.com with ESMTPS id a4si71749pje.1.2019.12.19.12.22.21
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 19 Dec 2019 12:22:21 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::542 as permitted sender) client-ip=2607:f8b0:4864:20::542;
Received: by mail-pg1-x542.google.com with SMTP id x8so3718341pgk.8
        for <clang-built-linux@googlegroups.com>; Thu, 19 Dec 2019 12:22:21 -0800 (PST)
X-Received: by 2002:a63:d249:: with SMTP id t9mr11165747pgi.263.1576786940683;
 Thu, 19 Dec 2019 12:22:20 -0800 (PST)
MIME-Version: 1.0
References: <20191218015252.20890-1-natechancellor@gmail.com>
In-Reply-To: <20191218015252.20890-1-natechancellor@gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Thu, 19 Dec 2019 12:22:09 -0800
Message-ID: <CAKwvOdk_CqpdJdKLQ-a5AK8pci7yMic9pgJW5x-iFosYbk8CMw@mail.gmail.com>
Subject: Re: [PATCH] scsi: qla4xxx: Adjust indentation in qla4xxx_mem_free
To: Nathan Chancellor <natechancellor@gmail.com>
Cc: QLogic-Storage-Upstream@qlogic.com, 
	"James E.J. Bottomley" <jejb@linux.ibm.com>, "Martin K. Petersen" <martin.petersen@oracle.com>, 
	linux-scsi@vger.kernel.org, LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=Cxx1pArM;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::542
 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Nick Desaulniers <ndesaulniers@google.com>
Reply-To: Nick Desaulniers <ndesaulniers@google.com>
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

On Tue, Dec 17, 2019 at 5:52 PM Nathan Chancellor
<natechancellor@gmail.com> wrote:
>
> Clang warns:
>
> ../drivers/scsi/qla4xxx/ql4_os.c:4148:3: warning: misleading
> indentation; statement is not part of the previous 'if'
> [-Wmisleading-indentation]
>          if (ha->fw_dump)
>          ^
> ../drivers/scsi/qla4xxx/ql4_os.c:4144:2: note: previous statement is
> here
>         if (ha->queues)
>         ^
> 1 warning generated.
>
> This warning occurs because there is a space after the tab on this line.
> Remove it so that the indentation is consistent with the Linux kernel
> coding style and clang no longer warns.
>
> Fixes: 068237c87c64 ("[SCSI] qla4xxx: Capture minidump for ISP82XX on firmware failure")
> Link: https://github.com/ClangBuiltLinux/linux/issues/819
> Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>

Thanks for the patch!
Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>

> ---
>  drivers/scsi/qla4xxx/ql4_os.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/scsi/qla4xxx/ql4_os.c b/drivers/scsi/qla4xxx/ql4_os.c
> index 2323432a0edb..5504ab11decc 100644
> --- a/drivers/scsi/qla4xxx/ql4_os.c
> +++ b/drivers/scsi/qla4xxx/ql4_os.c
> @@ -4145,7 +4145,7 @@ static void qla4xxx_mem_free(struct scsi_qla_host *ha)
>                 dma_free_coherent(&ha->pdev->dev, ha->queues_len, ha->queues,
>                                   ha->queues_dma);
>
> -        if (ha->fw_dump)
> +       if (ha->fw_dump)
>                 vfree(ha->fw_dump);
>
>         ha->queues_len = 0;
> --

-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdk_CqpdJdKLQ-a5AK8pci7yMic9pgJW5x-iFosYbk8CMw%40mail.gmail.com.
